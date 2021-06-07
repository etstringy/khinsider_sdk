import 'package:intl/intl.dart';

const ADDED_DATE_SEPARATOR = ' ';
final ADDED_DATE_FORMAT = ['MMM', 'dd', 'yyyy'].join(ADDED_DATE_SEPARATOR);

/// Parse the [date], which is the added date section of the album.
DateTime parseKhinsiderAddedDate(String date) {
  final parser = DateFormat(ADDED_DATE_FORMAT);

  final dateSegments = date.replaceAll(',', '').split(ADDED_DATE_SEPARATOR);
  dateSegments[1] = dateSegments[1].replaceAll(RegExp('[a-zA-Z]'), '');

  return parser.parse(dateSegments.join(ADDED_DATE_SEPARATOR));
}
