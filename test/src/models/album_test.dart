import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:khinsider_sdk/src/models/album.dart';
import 'package:test/test.dart';

import '../examples/albums.dart';

Document _getAlbumHtml(Map<String, Album> example) => parse(example.keys.first);

Album _getExpectedAlbum(Map<String, Album> example) => example.values.first;

void _testAlbum(Map<String, Album> example, String source) {
  final actual = Album.fromHtmlDoc(Uri.parse(source), _getAlbumHtml(example));
  final expected = _getExpectedAlbum(example);

  expect(actual, equals(expected));
}

void main() {
  group('Album', () {
    test('Album with MP3 and M4A', () {
      _testAlbum(MP3_AND_M4A_ALBUM, MP3_AND_M4A_ALBUM_SOURCE);
    });

    test('Album with only MP3', () {
      _testAlbum(MP3_ONLY_ALBUM, MP3_ONLY_ALBUM_SOURCE);
    });
  });
}
