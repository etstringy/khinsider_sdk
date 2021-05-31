import 'package:khinsider_api/src/utils/const.dart';

/// Returns the **unparsed** URL for listing albums using the given [query] string.
String getAlbumSearchUrl(String query) {
  return BASE_URL_SEARCH + query;
}

/// Returns the leaf path of the URL if any.
String? getUrlLeafPath(String url) {
  final parsed = Uri.parse(url);

  return parsed.pathSegments.isEmpty ? null : parsed.pathSegments.last;
}
