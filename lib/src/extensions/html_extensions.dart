import 'package:html/dom.dart';

extension DocumentExtensions on Document {
  /// Returns all anchor [Element] that satisfies the [condition].
  Iterable<Element> getAnchorTagWhereLink(bool Function(String?) condition) {
    return getElementsByTagName('a').where((anchor) {
      final hrefValue = anchor.attributes['href'];
      return condition(hrefValue);
    });
  }
}
