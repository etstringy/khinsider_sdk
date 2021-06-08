import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:khinsider_sdk/src/models/soundtrack.dart';
import 'package:test/test.dart';

import '../examples/soundtracks.dart';

Soundtrack _getExpectedSoundtrack(Map<String, Soundtrack> example) =>
    example.values.first;

Element _getTableRow(Map<String, Soundtrack> example) =>
    parse(example.keys.first).getElementsByTagName('tr').first;

void _checkSoundtrack(Map<String, Soundtrack> example, List<String> formats) {
  final actual = Soundtrack.fromTableRow(_getTableRow(example), formats);
  final expected = _getExpectedSoundtrack(example);

  expect(actual, equals(expected));
}

void main() {
  group('Soundtrack', () {
    test('MP3 only soundtrack', () {
      _checkSoundtrack(MP3_SOUNDTRACK, ['mp3']);
    });

    test('MP3 and FLAC soundtrack', () {
      _checkSoundtrack(MP3_AND_FLAC_SOUNDTRACK, ['mp3', 'flac']);
    });
  });
}
