import 'package:khinsider_sdk/src/extensions/string_extensions.dart';
import 'package:test/test.dart';

const DURATION_SEPARATOR = ':';

void main() {
  group('asDuration()', () {
    test('String to duration successful', () {
      final expected = Duration(minutes: 12, seconds: 59);
      final actual = "12${DURATION_SEPARATOR}59".asDuration(DURATION_SEPARATOR);

      expect(actual, expected);
    });

    test('Duration with leading 0 in the seconds segment successful', () {
      final expected = Duration(minutes: 12, seconds: 0);
      final actual = "12${DURATION_SEPARATOR}00".asDuration(DURATION_SEPARATOR);

      expect(actual, expected);
    });

    test('Duration with leading 0 in the minutes segment successful', () {
      final expected = Duration(minutes: 2, seconds: 32);
      final actual = "02${DURATION_SEPARATOR}32".asDuration(DURATION_SEPARATOR);

      expect(actual, expected);
    });

    test(
      'Duration but parsing with incorrect separator throws exception',
      () {
        final actual = "12${DURATION_SEPARATOR}59";

        expect(() => actual.asDuration('.'), throwsFormatException);
      },
    );

    test('Duration without both minutes and seconds throws exception', () {
      final actual = "59";

      expect(
        () => actual.asDuration(DURATION_SEPARATOR),
        throwsFormatException,
      );
    });
  });
}
