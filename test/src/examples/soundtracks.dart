import 'package:khinsider_api/src/models/soundtrack.dart';

/// Wrap the [bodyContent] inside a <body> tag inside an <html> tag.
String _wrapAsHtml(String bodyContent) => '''
<html>
  <body>
    <table>
      $bodyContent
    </table>
  </body>
</html>
''';

final MP3_AND_FLAC_SOUNDTRACK = {
  _wrapAsHtml('''
<tr>    	
		<td align="center" title="play track"><div class="playTrack"><div class="arrow-play">&nbsp;</div></div></td>
		                                                                                                            
			<td align="right" style="padding-right: 8px;">1.</td>   
		                                                                      
	 	<td class="clickable-row"><a href="/game-soundtracks/album/playing-with-nintendo-64-playing-with-power/01%2520Mario%252064%2520-%2520Koopa%2527s%2520Road.mp3">Mario 64 - Koopa's Road</a></td>
   		<td class="clickable-row" align="right"><a href="/game-soundtracks/album/playing-with-nintendo-64-playing-with-power/01%2520Mario%252064%2520-%2520Koopa%2527s%2520Road.mp3" style="font-weight:normal;">2:24</a></td> 
   		<td class="clickable-row" align="right"><a href="/game-soundtracks/album/playing-with-nintendo-64-playing-with-power/01%2520Mario%252064%2520-%2520Koopa%2527s%2520Road.mp3" style="font-weight:normal;">4.08 MB</a></td>     
       			
			<td class="clickable-row" align="right"><a href="/game-soundtracks/album/playing-with-nintendo-64-playing-with-power/01%2520Mario%252064%2520-%2520Koopa%2527s%2520Road.mp3" style="font-weight:normal;">23.69 MB</a></td>
                <td class="playlistDownloadSong"><a href="/game-soundtracks/album/playing-with-nintendo-64-playing-with-power/01%2520Mario%252064%2520-%2520Koopa%2527s%2520Road.mp3"><i class="material-icons">get_app</i></a></td> 
        <!--<td class="playlistAddTo" songid="1086856"><i class="material-icons">playlist_add</i><div>Add to </div></td>-->
	</tr>
'''): Soundtrack(
    id: '01%2520Mario%252064%2520-%2520Koopa%2527s%2520Road.mp3',
    name: "Mario 64 - Koopa's Road",
    duration: Duration(minutes: 2, seconds: 24),
    formatAndSizes: {'mp3': '4.08 MB', 'flac': '23.69 MB'},
  )
};

final MP3_SOUNDTRACK = {
  _wrapAsHtml('''
  <tr>    	
		<td align="center" title="play track"><div class="playTrack"><div class="arrow-play">&nbsp;</div></div></td>
		                                                                                                            
			<td align="right" style="padding-right: 8px;">10.</td>   
		                                                                      
	 	<td class="clickable-row"><a href="/game-soundtracks/album/irisu-syndrome-metsu/10%25E6%2599%2582%25E9%2596%2593%25E3%2581%258F%25E3%2582%2589%25E3%2581%2584%25E5%25A4%25A9%25E4%25BA%2595%25E3%2582%2592%25E8%25A6%258B%25E3%2581%25A6%25E3%2581%2584%25E3%2582%258B.mp3">時間くらい天井を見ている</a></td>
   		<td class="clickable-row" align="right"><a href="/game-soundtracks/album/irisu-syndrome-metsu/10%25E6%2599%2582%25E9%2596%2593%25E3%2581%258F%25E3%2582%2589%25E3%2581%2584%25E5%25A4%25A9%25E4%25BA%2595%25E3%2582%2592%25E8%25A6%258B%25E3%2581%25A6%25E3%2581%2584%25E3%2582%258B.mp3" style="font-weight:normal;">3:36</a></td> 
   		<td class="clickable-row" align="right"><a href="/game-soundtracks/album/irisu-syndrome-metsu/10%25E6%2599%2582%25E9%2596%2593%25E3%2581%258F%25E3%2582%2589%25E3%2581%2584%25E5%25A4%25A9%25E4%25BA%2595%25E3%2582%2592%25E8%25A6%258B%25E3%2581%25A6%25E3%2581%2584%25E3%2582%258B.mp3" style="font-weight:normal;">8.32 MB</a></td>     
       	        <td class="playlistDownloadSong"><a href="/game-soundtracks/album/irisu-syndrome-metsu/10%25E6%2599%2582%25E9%2596%2593%25E3%2581%258F%25E3%2582%2589%25E3%2581%2584%25E5%25A4%25A9%25E4%25BA%2595%25E3%2582%2592%25E8%25A6%258B%25E3%2581%25A6%25E3%2581%2584%25E3%2582%258B.mp3"><i class="material-icons">get_app</i></a></td> 
        <!--<td class="playlistAddTo" songid="1218813"><i class="material-icons">playlist_add</i><div>Add to </div></td>-->
	</tr>'''): Soundtrack(
    id: '10%25E6%2599%2582%25E9%2596%2593%25E3%2581%258F%25E3%2582%2589%25E3%2581%2584%25E5%25A4%25A9%25E4%25BA%2595%25E3%2582%2592%25E8%25A6%258B%25E3%2581%25A6%25E3%2581%2584%25E3%2582%258B.mp3',
    name: '時間くらい天井を見ている',
    duration: Duration(minutes: 3, seconds: 36),
    formatAndSizes: {'mp3': '8.32 MB'},
  )
};
