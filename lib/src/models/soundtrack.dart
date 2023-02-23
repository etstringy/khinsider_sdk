import 'package:html/dom.dart';
import 'package:khinsider_sdk/src/extensions/string_extensions.dart';
import 'package:khinsider_sdk/src/utils/const.dart';
import 'package:khinsider_sdk/src/utils/url_utils.dart';
import 'package:quiver/collection.dart';
import 'package:quiver/core.dart';

/// A soundtrack details from the Khinsider table of songs in an album.
class Soundtrack {
  /// The soundtrack id.
  final String id;

  /// The soundtrack display name.
  final String name;

  /// The duration of the soundtrack.
  final Duration duration;

  /// The formats of the soundtrack as keys, and the corresponding file sizes as values.
  final Map<String, String> formatAndSizes;

  /// Creates a new soundtrack object.
  Soundtrack({
    required this.id,
    required this.name,
    required this.duration,
    required this.formatAndSizes,
  });

  /// Parse the soundtrack details from a <[tr]> element. The [formats] contains
  /// a list of the available sound format. It should be in the correct order as the
  /// heading of the song list table.
  factory Soundtrack.fromTableRow(Element tr, List<String> formats) {
    final soundLink = tr
        // Get a <td> element with the class
        .getElementsByClassName(SOUNDTRACK_ID_CLASS)
        .first
        // Get the inner anchor tag
        .getElementsByTagName('a')
        .first
        // Get the link
        .attributes['href'];

    final id = getUrlLeafPath(soundLink!)!;

    final tableData = tr.getElementsByTagName('td');

    // Remove the irrelevant <td> elements
    // The first two <td> contain the play icon and the sound number
    // The last <td> contains a download icon
    final rows = tableData.getRange(2, tableData.length - 2).toList();

    // The first relevant <td> is the sound name
    final name = _getInnerHtmlOfSingleWrappingAnchor(rows.first);

    // The second relevant <td> is the sound duration, separated by ":"
    final duration = _getInnerHtmlOfSingleWrappingAnchor(rows[1])
        .asDuration(SOUNDTRACK_DURATION_SEPARATOR);

    final formatAndSizes = <String, String>{};

    // The remaining rows contains the file size
    for (int i = 2, j = 0; i < rows.length; i++, j++) {
      final size = _getInnerHtmlOfSingleWrappingAnchor(rows[i]);
      print(formats[j]);
      formatAndSizes[formats[j]] = size;
    }

    return Soundtrack(
      id: id,
      name: name,
      duration: duration,
      formatAndSizes: formatAndSizes,
    );
  }

  @override
  String toString() {
    return 'Soundtrack{id: $id, name: $name, duration: $duration, formatAndSizes: $formatAndSizes}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Soundtrack &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          duration == other.duration &&
          mapsEqual(formatAndSizes, other.formatAndSizes));

  @override
  int get hashCode {
    // The order of the map entries affect the hash code, but the same content
    // of the map leads to the same hash code
    final mapKeyHashCode = hashObjects(formatAndSizes.keys);
    final mapValueHashCode = hashObjects(formatAndSizes.values);
    final mapHashCode = hash2(mapKeyHashCode, mapValueHashCode);

    return hashObjects([id, name, duration, mapHashCode]);
  }
}

/// Returns the inner HTML of the anchor tag that is contained by the [container].
String _getInnerHtmlOfSingleWrappingAnchor(Element container) =>
    container.getElementsByTagName('a').first.innerHtml;
