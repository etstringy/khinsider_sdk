import 'package:html/parser.dart';
import 'package:khinsider_api/src/models/album.dart';
import 'package:test/test.dart';

import '../examples/albums.dart';

String _getExampleSourceLink(Map<String, Object> example) =>
    example[KEY_SOURCE]! as String;

String _getExampleHtml(Map<String, Object> example) =>
    example[KEY_HTML]! as String;

void _testActualAndExample(Map<String, Object> example, Album actual) {
  expect(actual.albumId, example[KEY_ID]! as String);
  expect(actual.albumName, example[KEY_NAME]! as String);

  final covers = (example[KEY_COVERS]! as List<String>)
      .map((e) => Uri.parse(e))
      .toList();

  expect(actual.coversUri, covers);

  final date = example[KEY_DATE_ADDED]! as DateTime;
  expect(actual.dateAdded.year, date.year);
  expect(actual.dateAdded.month, date.month);
  expect(actual.dateAdded.day, date.day);
}

void main() {
  group('Album', () {
    test('Album with MP3 and M4A', () {
      final example = MP3_AND_MP4;
      final source = Uri.parse(_getExampleSourceLink(example));
      final document = parse(_getExampleHtml(example));

      final actual = Album.fromHtmlDoc(source, document);
      _testActualAndExample(example, actual);
    });
  });
}
