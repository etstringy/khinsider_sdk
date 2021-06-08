import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart';
import 'package:khinsider_sdk/src/extensions/html_extensions.dart';
import 'package:khinsider_sdk/src/models/album.dart';
import 'package:khinsider_sdk/src/utils/const.dart';
import 'package:khinsider_sdk/src/utils/url_utils.dart';
import 'package:quiver/strings.dart';

/// A client object that makes HTTP requests to Khinsider.
class Khinsider {
  /// The HTTP requests client.
  late final Client client;

  /// Creates a client object. If the supplied [client] is null, a default [Client]
  /// from the `http` package will be used.
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
    _ensureCondition(
      () => query.length >= 3,
      'The query string must be of length 3 or greater',
    );

    // Query Khinsider
    final uri = Uri.parse(getAlbumSearchUnparsedUrl(query));
    final document = await _readUrlAndParse(uri);

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

  /// Retrieves an album details for the given [albumId] from Khinsider website.
  /// If [albumId] is blank or such id does not exist, an [ArgumentError] will be thrown.
  Future<Album> getAlbum(String albumId) async {
    _ensureCondition(() => isNotBlank(albumId), 'Album id cannot be empty');

    // Call Khinsider
    final uri = Uri.parse(getAlbumUnparsedUrl(albumId));
    final document = await _readUrlAndParse(uri);

    // Build Album using the factory function
    try {
      return Album.fromHtmlDoc(uri, document);
    } catch (err) {
      throw ArgumentError('The album ID "$albumId" does not exist!');
    }
  }

  /// Return the link to the sound files for the soundtrack with id [soundId]
  /// from album with id [albumId]. The key will be the file format and the value
  /// will be the file link.
  Future<Map<String, Uri>> getSoundFiles(String albumId, String soundId) async {
    _ensureCondition(
      () => isNotBlank(albumId) && isNotBlank(soundId),
      'Both albumId and soundId should not be blank!',
    );

    // Call Khinsider
    final uri = Uri.parse(getSoundtrackUnparsedUrl(albumId, soundId));
    final document = await _readUrlAndParse(uri);

    // Get <a> tag which href attribute is the sound file URL
    final soundFileAnchors = document.getAnchorTagWhereLink(
      (link) =>
          link != null && isSoundFileUrlFor(Uri.parse(link), albumId, soundId),
    );

    // There must be at least 1 result, which is the mp3 file
    _ensureCondition(
      () => soundFileAnchors.isNotEmpty,
      'The album id or the sound id is invalid!',
    );

    final result = <String, Uri>{};

    soundFileAnchors.forEach((a) {
      final href = a.attributes['href']!;
      final fileFormat = href.split('.').last.toLowerCase();

      result[fileFormat] = Uri.parse(href);
    });

    return result;
  }

  /// Call the client's read() function and parse the returned HTML string.
  Future<Document> _readUrlAndParse(Uri uri) async {
    final response = await client.read(uri);

    return parse(response);
  }

  /// Ensures that the [condition] function returns `true`. If it returns `false`,
  /// an [ArgumentError] is thrown with the [message].
  void _ensureCondition(bool Function() condition, String message) {
    if (!condition()) throw ArgumentError(message);
  }
}
