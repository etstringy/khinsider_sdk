import 'package:khinsider_api/src/utils/date_utils.dart';
import 'package:test/test.dart';

String _getKhinsiderAddedDate(String ordinalDate, String month, String year) =>
    '$month $ordinalDate, $year';

void main() {
  group('Album Added Date', () {
    test('Parse month with the same name as the same abbreviation', () {
      final addedDate = _getKhinsiderAddedDate('26th', 'May', '2021');

      final parsed = parseKhinsiderAddedDate(addedDate);

      expect(parsed.day, 26);
      expect(parsed.month, DateTime.may);
      expect(parsed.year, 2021);
    });

    test('Parse month with a different name than the same abbreviation', () {
      final addedDate = _getKhinsiderAddedDate('23rd', 'Apr', '2021');

      final parsed = parseKhinsiderAddedDate(addedDate);

      expect(parsed.day, 23);
      expect(parsed.month, DateTime.april);
      expect(parsed.year, 2021);
    });
  });
}
