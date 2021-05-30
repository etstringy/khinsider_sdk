import 'package:html/parser.dart';
import 'package:http/http.dart';

void main() {
  final stopwatch = Stopwatch();

  final client = Client();

  /* Search */
  // final url =
  //     Uri.parse("https://downloads.khinsider.com/search?search=pokemon");
  //
  // get(url).then((value) => {
  //       parse(value.body)
  //           .getElementsByTagName('a')
  //           .where((anchor) =>
  //               anchor.attributes['href']?.contains('game-soundtracks/album') ??
  //               false)
  //           .forEach((element) {
  //         print(element.innerHtml);
  //       })
  //     });

  /* Album */
  const base = "https://downloads.khinsider.com/game-soundtracks/album/";
  const albumId = 'pokemon-black-and-white-2-super-music-collection';
  final url = Uri.parse("$base$albumId");

  stopwatch.start();

  client.get(url).then((value) {
    final soundtrackIds = parse(value.body)
        .getElementsByTagName('a')
        .where((anchor) => anchor.attributes['href']?.endsWith('.mp3') ?? false)
        .map((e) {
      final lastPart = e.attributes['href']!.split('/').last;
      return lastPart;
    }).toSet();

    final soundFiles = soundtrackIds.map((soundId) async {
      final soundFilesUrl = Uri.parse('$base$albumId/$soundId');

      // print('Retrieving sound $soundId from ${soundFilesUrl.toString()}');

      final response = await client.get(soundFilesUrl);

      final anchors = parse(response.body).getElementsByTagName('a');

      final mp3Anchor = anchors
          .where(
              (anchor) => anchor.attributes['href']?.endsWith('.mp3') ?? false)
          .first;

      return mp3Anchor.attributes['href']!;
    });

    Future.wait(soundFiles).then((value) {
      print(
          'Taken ${stopwatch.elapsedMilliseconds / 1000} seconds for ${value.length} files');

      client.close();
    }).catchError((err) {
      print(err);
    });
    // soundFiles.first.then((value) {
    //   print(
    //       'Link to sound: $value, taken ${stopwatch.elapsedMilliseconds / 1000} seconds');
    //   stopwatch.stop();
    // });
  });
}
