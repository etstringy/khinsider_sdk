import 'package:khinsider_api/src/utils/const.dart';

/// Returns the **unparsed** URL for listing albums using the given [query] string.
String getAlbumSearchUnparsedUrl(String query) => BASE_URL_SEARCH + query;

/// Returns the **unparsed** URL for the album with id [albumId].
String getAlbumUnparsedUrl(String albumId) => BASE_ALBUM_URL + albumId;

/// Returns the **unparsed** URL for the soundtrack with id [soundId] from
/// the album with id [albumId].
String getSoundtrackUnparsedUrl(String albumId, String soundId) =>
    getAlbumUnparsedUrl(albumId) + '/' + soundId;

/// Checks if the given [source] URI is the album cover URI for the album with id [albumId].
bool isAlbumCoverUrlFor(Uri source, String albumId) {
  final startingUrl = BASE_COVER_URL.replaceAll('{id}', albumId);

  return source.toString().startsWith(startingUrl);
}

/// Checks if [source] URI is the sound file from an album with the id [albumId]
/// and the soundtrack id [soundId].
bool isSoundFileUrlFor(Uri source, String albumId, String soundId) {
  final front = BASE_SOUND_FILE_URL + albumId;

  final segments = source.toString().split('/');

  return source.toString().startsWith(front) &&
      source.pathSegments.isNotEmpty &&
      segments.last.contains(soundId);
}

/// Returns the leaf path of the URL if any.
String? getUrlLeafPath(String url) {
  final parsed = Uri.parse(url);

  final pathSegments = parsed.toString().split('/');

  return parsed.pathSegments.isEmpty ? null : pathSegments.last;
}
