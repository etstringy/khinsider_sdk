import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:khinsider_api/src/extensions/html_extensions.dart';
import 'package:test/test.dart';

final document = '''
<html>
  <head></head>
  <body>
    <a href="some/link/here">Test Text Here</a>
    <a href="http://www.google.com">Google</a>
    <a>Empty Link</a>
  </body>
</html>
''';

void main() {
  group('HTML Extensions', () {
    late Document parsed;

    setUp(() {
      parsed = parse(document);
    });

    test(
      'getAnchorTagWhereLink returns anchor according to the condition',
      () {
        final tag = parsed
            .getAnchorTagWhereLink((link) => link?.contains('here') ?? false)
            .first;

        // Assert that it is an anchor tag
        expect(tag.localName, 'a');

        // Assert that the link contains "here"
        expect(tag.attributes['href'], contains('here'));
      },
    );
  });
}
