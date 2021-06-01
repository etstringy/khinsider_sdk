import 'package:html/dom.dart';
import 'package:khinsider_api/src/utils/const.dart';
import 'package:khinsider_api/src/utils/date_utils.dart';
import 'package:khinsider_api/src/utils/url_utils.dart';

class Album {
  final String albumId;
  final String albumName;
  final List<Uri> coversUri;
  final DateTime dateAdded;

  Album({
    required this.albumId,
    required this.albumName,
    required this.coversUri,
    required this.dateAdded,
  });

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

    final detailsParagraph = document
        .getElementsByTagName('p')
        .where((element) => element.innerHtml.contains(DATE_ADDED))
        .first;

    // The last <b> tag of the album details is the added date
    final dateAddedString =
        detailsParagraph.getElementsByTagName('b').last.innerHtml;
    final dateAdded = parseKhinsiderAddedDate(dateAddedString);

    return Album(
      albumId: albumId,
      albumName: albumName,
      coversUri: coversUri,
      dateAdded: dateAdded,
    );
  }
}
