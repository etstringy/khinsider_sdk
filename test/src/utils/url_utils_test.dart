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

  group('Soundtrack URL', () {
    test('Get soundtrack URL', () {
      final albumId = 'megaman-zero-1-ost-remastered';
      final soundId = '06%20Theme%20of%20ZERO%20%28from%20Rockman%20X%29.mp3';

      final expected =
          'https://downloads.khinsider.com/game-soundtracks/album/$albumId/$soundId';

      expect(getSoundtrackUnparsedUrl(albumId, soundId), expected);
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

  group('Sound File URL', () {
    final albumId = 'megaman-zero-1-ost-remastered';
    final soundId = '06%20Theme%20of%20ZERO%20%28from%20Rockman%20X%29.mp3';

    final uri = Uri.parse(
        'https://vgmsite.com/soundtracks/$albumId/zhlfubvcjs/$soundId');

    test('Not a sound file URL returns false', () {
      final notSoundFileUri = Uri.parse('http://www.google.com');

      expect(isSoundFileUrlFor(notSoundFileUri, albumId, soundId), false);
    });

    test('A sound file URL with wrong album id returns false', () {
      expect(isSoundFileUrlFor(uri, 'other-album', soundId), false);
    });

    test('A sound file URL with wrong sound id returns false', () {
      expect(isSoundFileUrlFor(uri, albumId, 'other-sound'), false);
    });

    test('A sound file URL with correct id returns true', () {
      expect(isSoundFileUrlFor(uri, albumId, soundId), true);
    });
  });
}
