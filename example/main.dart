import 'package:khinsider_sdk/src/core/khinsider.dart';

void main() async {
  // Create the client object
  final khinsider = Khinsider();

  // Query for a list of albums
  print('/* Search */');
  final albumsList = await khinsider.searchAlbums('Hello');

  albumsList.forEach((key, value) {
    print('$key: $value');
  });

  // Query a specific album to get its soundtracks and related albums
  print('/* Album */');
  final album = await khinsider.getAlbum('angel');

  final songs = album.soundtracks;

  songs.forEach((element) {
    print(element.name + " : " + element.id);
  });

  // Query a specific soundtrack to get the download link(s)
  print('/* Get sound file links */');
  final soundFiles = await khinsider.getSoundFiles(
    'best-of-amok-retro-c64-and-amiga-remixes',
    '09%2520-%2520Ice%2520Age%2520%2528Jeroen%2520Tel%2529.mp3',
  );

  soundFiles.forEach((format, link) {
    print('Sound for $format can be found on $link');
  });
}
