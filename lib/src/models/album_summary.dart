import 'package:html/dom.dart';
import 'package:khinsider_sdk/src/utils/url_utils.dart';
import 'package:quiver/core.dart';

/// A data class for the summary details of an album.
/// Contains the album id, name, and main cover image URI.
class AlbumSummary {
  /// The album id.
  final String id;

  /// The album display name.
  final String name;

  /// The main cover image of the album. It is not necessarily the only cover image.
  /// If there is no cover image, this will be `null`.
  final Uri? mainCoverImage;

  const AlbumSummary({
    required this.id,
    required this.name,
    this.mainCoverImage = null,
  });

  /// Create an [AlbumSummary] from a `<td>` element.
  factory AlbumSummary.fromTableData(Element td) {
    // Get the inner <a>
    final anchor = td.getElementsByTagName('a').first;

    // ID is the leaf path of the anchor href
    final id = getUrlLeafPath(anchor.attributes['href']!)!;

    // Name is the last <p> element in the <a> tag
    final name = anchor.getElementsByTagName('p').last.innerHtml;

    // If there is an <img> tag in the <a> tag, then it is the main cover image
    Uri? mainCover = null;

    final imageTag = anchor.getElementsByTagName('img');

    if (imageTag.isNotEmpty) {
      final image = imageTag.first;
      mainCover = Uri.parse(image.attributes['src']!);
    }

    return AlbumSummary(id: id, name: name, mainCoverImage: mainCover);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AlbumSummary &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          mainCoverImage == other.mainCoverImage;

  @override
  int get hashCode => hash3(id, name, mainCoverImage);
}
