extension StringExtensions on String {
  /// Parse the String into a Duration object. The String must contain both and
  /// only the minute and second, separated by [separator].
  Duration asDuration(String separator) {
    final segments = split(separator);

    if (segments.length != 2) {
      throw FormatException(
          'Only minutes and seconds duration is allowed, or the separator is incorrect');
    }

    final seconds = int.parse(segments.last);
    final minutes = int.parse(segments.first);

    return Duration(minutes: minutes, seconds: seconds);
  }
}
