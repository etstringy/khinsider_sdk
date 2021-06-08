import 'package:khinsider_sdk/src/models/album_summary.dart';

String _buildAlbumSummaryHtml(String td) => '''
<html>
  <body>
    <table>
      <tbody>
        <tr>
          $td
        </tr>
      </tbody>
    </table>
  </body>
</html>''';

final NO_COVER_ALBUM_SUMMARY = {
  _buildAlbumSummaryHtml(r'''
  <td style="padding: 3px; width:130px;" valign="top" align="center">
      <a href="/game-soundtracks/album/flintstones-in-viva-rock-vegas-the-dreamcast">
        <p style="font-size: 45px;"><i class="material-icons">music_video</i></p>
        <br>
        <p style="margin-left: 5px; margin-right: 5px; margin-top: 0px; margin-bottom:0px; padding: 0;">Flintstones in Viva Rock Vegas, The (Dreamcast)</p>
      </a>
  </td>
  '''): AlbumSummary(
    id: 'flintstones-in-viva-rock-vegas-the-dreamcast',
    name: 'Flintstones in Viva Rock Vegas, The (Dreamcast)',
  )
};

final WITH_COVER_ALBUM_SUMMARY = {
  _buildAlbumSummaryHtml(r'''
  <td style="padding: 3px; width:130px;" valign="top" align="center">
                <a href="/game-soundtracks/album/flintstones-the-sega-genesis">
                    <img src="https://vgmsite.com/soundtracks/flintstones-the-sega-genesis/thumbs/The Flintstones.png" border="0">
                                    <br>
                <p style="margin-left: 5px; margin-right: 5px; margin-top: 0px; margin-bottom:0px; padding: 0;">Flintstones, The (Sega Genesis)</p></a>
            </td>
  '''): AlbumSummary(
    id: 'flintstones-the-sega-genesis',
    name: 'Flintstones, The (Sega Genesis)',
    mainCoverImage: Uri.parse(
        'https://vgmsite.com/soundtracks/flintstones-the-sega-genesis/thumbs/The Flintstones.png'),
  )
};
