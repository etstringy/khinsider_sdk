import 'package:html/dom.dart';
import 'package:khinsider_api/src/models/album_summary.dart';
import 'package:khinsider_api/src/models/soundtrack.dart';
import 'package:khinsider_api/src/utils/const.dart';
import 'package:khinsider_api/src/utils/date_utils.dart';
import 'package:khinsider_api/src/utils/url_utils.dart';
import 'package:quiver/collection.dart';
import 'package:quiver/core.dart';

/// Represents an album in Khinsider.
class Album {
  /// The summary for this album.
  final AlbumSummary summary;

  /// All cover images available for this album.
  final List<Uri> coversUri;

  /// All soundtrack file formats available for this album.
  final List<String> fileFormats;

  /// When this album was added to Khinsider.
  final DateTime dateAdded;

  /// All the soundtracks available for this album.
  final List<Soundtrack> soundtracks;

  /// Other albums that people in Khinsider also view beside this album.
  final List<AlbumSummary> relatedAlbums;

  const Album({
    required this.summary,
    required this.coversUri,
    required this.fileFormats,
    required this.dateAdded,
    required this.soundtracks,
    required this.relatedAlbums,
  });

  /// The album id from [summary].
  String get id => summary.id;

  /// The album display name from [summary].
  String get name => summary.name;

  /// Create an album from Khinsider's HTML code of an album.
  factory Album.fromHtmlDoc(Uri source, Document document) {
    // The leaf path of the URL is the album id
    final albumId = getUrlLeafPath(source.toString())!;

    // The first <h2> tag contains the album name
    final albumName = document.getElementsByTagName('h2').first.innerHtml;

    // Covers are <img> tags with no class and with album id in the album url
    final coversUri = <Uri>[];

    document.getElementsByTagName('img').where((img) {
      final imgSrc = img.attributes['src'];

      return img.classes.isEmpty &&
          imgSrc != null &&
          isAlbumCoverUrlFor(Uri.parse(imgSrc), albumId);
    }).forEach((img) {
      coversUri.add(Uri.parse(img.attributes['src']!));
    });

    // Available file formats are taken from the table header
    final tableHeaders =
        document.getElementById(SONGLIST_HEADER_ID)!.getElementsByTagName('th');

    final fileFormats = tableHeaders
        // Take only the headers that specifies audio format
        .getRange(SOUND_FORMAT_START_INDEX, tableHeaders.length - 1)
        // These headers contains a single <b> tag
        .map((header) => header.getElementsByTagName('b').first)
        // The file format is the content of the <b> tag
        .map((bold) => bold.innerHtml.toLowerCase())
        .toList();

    final detailsParagraph = document
        .getElementsByTagName('p')
        .where((element) => element.innerHtml.contains(DATE_ADDED))
        .first;

    // The last <b> tag of the album details is the added date
    final dateAddedString =
        detailsParagraph.getElementsByTagName('b').last.innerHtml;
    final dateAdded = parseKhinsiderAddedDate(dateAddedString);

    // Soundtracks are in the table with the id `songlist`
    final tables = document.getElementsByTagName('table');

    final soundtrackTableIndex =
        tables.indexWhere((element) => element.id == SOUNDTRACK_TABLE_ID);

    final soundtrackTable = tables[soundtrackTableIndex];

    // Each soundtrack is in a <tr> except the first and the last
    var soundtrackRows = soundtrackTable.getElementsByTagName('tr');
    soundtrackRows.removeLast();
    soundtrackRows.removeAt(0);

    final soundtracks = soundtrackRows
        .map((tr) => Soundtrack.fromTableRow(tr, fileFormats))
        .toList();

    // Related album is the next table after the soundtrack table
    final relatedAlbumTable = tables[soundtrackTableIndex + 1];
    final relatedAlbums = relatedAlbumTable
        .getElementsByTagName('td')
        .map((td) => AlbumSummary.fromTableData(td))
        .toList();

    return Album(
      summary: AlbumSummary(
        id: albumId,
        name: albumName,
        mainCoverImage: coversUri.isEmpty ? null : coversUri.first,
      ),
      coversUri: coversUri,
      fileFormats: fileFormats,
      dateAdded: dateAdded,
      soundtracks: soundtracks,
      relatedAlbums: relatedAlbums,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Album &&
          runtimeType == other.runtimeType &&
          summary == other.summary &&
          listsEqual(coversUri, other.coversUri) &&
          listsEqual(fileFormats, other.fileFormats) &&
          dateAdded == other.dateAdded &&
          listsEqual(soundtracks, other.soundtracks) &&
          listsEqual(relatedAlbums, other.relatedAlbums);

  @override
  int get hashCode => hashObjects([
        summary,
        hashObjects(coversUri),
        hashObjects(fileFormats),
        dateAdded,
        hashObjects(soundtracks),
        hashObjects(relatedAlbums),
      ]);

  @override
  String toString() {
    return 'Album{summary: $summary, coversUri: $coversUri, fileFormats: $fileFormats, dateAdded: $dateAdded, soundtracks: $soundtracks, relatedAlbums: $relatedAlbums}';
  }
}
