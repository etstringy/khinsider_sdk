import 'package:http/http.dart';
import 'package:khinsider_api/src/core/khinsider.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../examples/albums.dart';
import '../examples/search_album.dart';
import 'khinsider_test.mocks.dart';

@GenerateMocks([Client])
void main() {
  group('Khinsider()', () {
    late Khinsider khinsider;
    late MockClient mock;

    setUp(() {
      mock = MockClient();
      khinsider = Khinsider(client: mock);
    });

    test('Search album with queries below 3 characters throw error', () {
      expect(() async => await khinsider.searchAlbums(''), throwsArgumentError);
    });

    test('Search album returns the album id and the album display name',
        () async {
      when(mock.read(any)).thenAnswer((_) async => searchAlbumExample);

      final result = await khinsider.searchAlbums('Test');

      expect(result, expectedAlbums);
    });

    test('Search album with no result returns an empty map', () async {
      when(mock.read(any)).thenAnswer((_) async => searchAlbumEmptyExample);

      final result = await khinsider.searchAlbums('Test');

      expect(result, <String, String>{});
    });

    test('Search album throws error when the request fails', () async {
      when(mock.read(any))
          .thenAnswer((_) => Future.error(ClientException('Mock error')));

      expect(() => khinsider.searchAlbums('Test'), throwsException);
    });

    test('Get album throws argument error when id does not exist', () {
      when(mock.read(any)).thenAnswer((_) async => ALBUM_NOT_FOUND_EXAMPLE);

      expect(() => khinsider.getAlbum('non-existing'), throwsArgumentError);
    });

    test('Get album throws argument error when id is blank', () {
      expect(() => khinsider.getAlbum(' '), throwsArgumentError);
    });

    test('Get album throws argument error when id is empty', () {
      expect(() => khinsider.getAlbum(''), throwsArgumentError);
    });

    test('Get album with existing album id', () async {
      final example = MP3_AND_M4A_ALBUM;
      final mockHtml = example.keys.first;
      final expected = example.values.first;

      when(mock.read(any)).thenAnswer((_) async => mockHtml);

      final actual = await khinsider.getAlbum(expected.id);

      expect(actual, equals(expected));
    });
  });
}
