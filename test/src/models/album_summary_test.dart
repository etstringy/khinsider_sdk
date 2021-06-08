import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:khinsider_sdk/src/models/album_summary.dart';
import 'package:test/test.dart';

import '../examples/album_summaries.dart';

Element _getTableData(Map<String, AlbumSummary> example) =>
    parse(example.keys.first).getElementsByTagName('td').first;

AlbumSummary _getExpected(Map<String, AlbumSummary> example) =>
    example.values.first;

void _checkAlbum(Map<String, AlbumSummary> example) {
  final td = _getTableData(example);
  final actual = AlbumSummary.fromTableData(td);
  final expected = _getExpected(example);

  expect(actual, equals(expected));
}

void main() {
  group('Album Summary', () {
    test('Album summary with no cover', () {
      _checkAlbum(NO_COVER_ALBUM_SUMMARY);
    });

    test('Album summary with cover', () {
      _checkAlbum(WITH_COVER_ALBUM_SUMMARY);
    });
  });
}
