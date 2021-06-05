import 'package:khinsider_api/src/utils/url_utils.dart';
import 'package:test/test.dart';

void main() {
  group('Album Search URL', () {
    test('Get album search URL', () {
      final query = 'test';
      final expected = 'https://downloads.khinsider.com/search?search=$query';

      expect(getAlbumSearchUnparsedUrl(query), expected);
    });
  });

  group('Album URL', () {
    test('Get album URL using id', () {
      final id = 'wrecking-crew-98';
      final expected =
          'https://downloads.khinsider.com/game-soundtracks/album/$id';

      expect(getAlbumUnparsedUrl(id), expected);
    });
  });

  group('URL Leaf Path', () {
    test('Get leaf path without branch', () {
      final url = 'http://www.google.com';
      final String? expected = null;

      expect(getUrlLeafPath(url), expected);
    });

    test('Get leaf path with branch', () {
      final url = 'http://www.google.com/a/b/c/d/search-me';
      final expected = 'search-me';

      expect(getUrlLeafPath(url), expected);
    });

    test('Get leaf path with non-empty relative path', () {
      final url = '/a/b/c/d';
      final expected = 'd';

      expect(getUrlLeafPath(url), expected);
    });

    test('Get leaf path with empty relative path returns null', () {
      final url = '/';

      expect(getUrlLeafPath(url), null);
    });

    test('Test Khinsider soundtrack path', () {
      final url =
          "/game-soundtracks/album/playing-with-nintendo-64-playing-with-power/01%2520Mario%252064%2520-%2520Koopa%2527s%2520Road.mp3";

      expect(getUrlLeafPath(url),
          '01%2520Mario%252064%2520-%2520Koopa%2527s%2520Road.mp3');
    });
  });

  group('Album Cover URL', () {
    test('Not an album cover URL returns false', () {
      final uri = Uri.parse(
          'https://downloads.khinsider.com/game-soundtracks/album/ryu-ga-gotoku-7-karaoke-hit-song-collection');

      final albumId = getUrlLeafPath(uri.toString())!;

      expect(isAlbumCoverUrlFor(uri, albumId), false);
    });

    test('An album cover URL with correct album ID returns true', () {
      final uri = Uri.parse(
          'https://vgmsite.com/soundtracks/minecraft/thumbs/cover.jpg');

      final albumId = 'minecraft';

      expect(isAlbumCoverUrlFor(uri, albumId), true);
    });

    test('An album cover URL with incorrect album ID returns false', () {
      final uri = Uri.parse(
          'https://vgmsite.com/soundtracks/minecraft/thumbs/cover.jpg');

      final albumId = 'other-album';

      expect(isAlbumCoverUrlFor(uri, albumId), false);
    });
  });
}
