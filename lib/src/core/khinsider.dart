import 'package:html/parser.dart';
import 'package:http/http.dart';
import 'package:khinsider_api/src/extensions/html_extensions.dart';
import 'package:khinsider_api/src/utils/const.dart';
import 'package:khinsider_api/src/utils/url_utils.dart';

class Khinsider {
  late final Client client;

  Khinsider({Client? client}) {
    this.client = client == null ? Client() : client;
  }

  /// Returns a map with the album id as the key and the album display name as the value.
  /// This will make a GET request to Khinsider to search for album using [query].
  ///
  /// Note that Khinsider has the condition that the [query] string length must be of length 3 or above.
  /// If the [query] length is less than 3, an [ArgumentError] will be thrown.
  Future<Map<String, String>> searchAlbums(String query) async {
    // Khinsider has the condition that the query length must be of length 3.
    if (query.length < 3) {
      return Future.error(
        ArgumentError('The query string must be of length 3 or greater'),
      );
    }

    // Query Khinsider
    final url = Uri.parse(getAlbumSearchUrl(query));
    final response = await client.read(url);

    // Find the relevant anchor tags
    final document = parse(response);

    final albumAnchors = document.getAnchorTagWhereLink(
      (link) => link != null && link.startsWith(ALBUMS_ANCHOR_HREF_START),
    );

    // Build the result, and return
    final result = <String, String>{};

    albumAnchors.forEach((anchor) {
      final href = anchor.attributes['href'];
      if (href == null) return;

      final key = getUrlLeafPath(href);
      if (key == null) return;

      final value = anchor.innerHtml;

      result[key] = value;
    });

    return result;
  }
}
