/// Expected search return result for the example code [searchAlbumExample].
const expectedAlbums = {
  'rune-factory-4-soundtrack': 'Rune Factory 4 Soundtrack',
  'rune-factory-4-special-original-soundtrack':
      'Rune Factory 4 Special Original Soundtrack',
};

/// HTML page source example when querying for albums.
const searchAlbumExample = r"""
<!DOCTYPE html PUBLIC "-//W3C//DTD Xhtml 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<script language="JavaScript" src="/files/cookies.js"></script>
<meta http-equiv='Content-Type' content='text/html; charset=utf-8'>
<title>Search - 
</title>
	<meta name="description" content="Video Game Music MP3 downloads and other media">
    	<meta name="keyowords" content="video, game, music, media, mp3">
	<meta name="robots" content="index, follow">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>

	<script language="JavaScript" type="text/javascript">
	<!--
		var browserName=navigator.appName;
		if (browserName=="Microsoft Internet Explorer")
		{
			//load ie friendly stylesheet
			document.write('<link rel="stylesheet" type="text/css" href="/images/template_ie.css">')
		}
		else
		{
			//load  stylesheet
			document.write('<link rel="stylesheet" type="text/css" href="/images/template.css">')
		}
	//-->
    </script>
    <link rel="shortcut icon" href="/images/favicon.ico">
    <link rel="stylesheet" type="text/css" href="/images/styles.css">
    <link rel="stylesheet" href="/images/audioplayer.css" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

</head>
<body>
<table id="faux"><tbody><tr><td>
<div id="page">
	<div id="alpha">

		<div id="lmenu"> 
		<div><a href="/"><h1 style="padding-left:15px;">Video<br>Game<br>Music</h2></a></div>
<div class="moduletable">
							<h3>
					Downloads				</h3>

<table border="0" cellpadding="0" cellspacing="0" width="100%" style="font-size: 12px;">
<tbody>
<tr align="left"><td><a href="/" class="mainlevel">Home</a></td></tr>
<tr align="left"><td><a href="/game-soundtracks" class="mainlevel">Music</a></td></tr>
<tr align="left"><td><a href="/cp" class="mainlevel">My Albums</a></td></tr>
<tr align="left"><td><a href="/forums/index.php?register/" class="mainlevel">Register</a></td></tr><tr align="left"><td><a href="/forums/index.php?account/upgrades" class="mainlevel">Donate <font color="red"><b><i class="material-icons" style="font-size: 11px;">favorite</i></b></font></a></td></tr>
<tr align="left"><td><a href="/forums/login" class="mainlevel">Log In</a></td></tr>
</tbody>
</table>
	</div>

<div class="moduletable">
							<h3>
					Albums </h3>

<table border="0" cellpadding="0" cellspacing="0" width="100%" style="font-size: 12px;">
<tbody>
<tr align="left"><td><a href="/top40" class="mainlevel">Top 40</a></td></tr>
<tr align="left"><td><a href="/all-time-top-100" class="mainlevel">Top 1000 All Time</a></td></tr>
<tr align="left"><td><a href="/last-6-months-top-100" class="mainlevel">Top 100 Last 6 Months</a></td></tr>
<tr align="left"><td><a href="/top-100-newly-added" class="mainlevel">Top 100 Newly Added</a></td></tr>
<tr align="left"><td><a href="/random-album" class="mainlevel">Random Album</a></td></tr>
<tr align="left"><td><a href="/random-song" class="mainlevel">Random Song</a></td></tr>
</tbody>
</table>
	</div>


<div class="moduletable">
							<h3>
					Album Search				</h3>


		<form action="/search" method="get">
			<input type="text" name="search" style="width: 140px;" value="rune factory 4"> <input type="submit" value="Search">
		</form>
	</div>

<div class="moduletable">
							<h3>
					Albums By Letter				</h3>

<table border="0" cellpadding="0" cellspacing="0" width="100%" style="font-size: 12px;">
<tbody>

<tr align="left">
<td>
			<a href="/game-soundtracks/browse/%23" class="mainlevel">#</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/A" class="mainlevel">A</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/B" class="mainlevel">B</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/C" class="mainlevel">C</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/D" class="mainlevel">D</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/E" class="mainlevel">E</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/F" class="mainlevel">F</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/G" class="mainlevel">G</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/H" class="mainlevel">H</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/I" class="mainlevel">I</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/J" class="mainlevel">J</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/K" class="mainlevel">K</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/L" class="mainlevel">L</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/M" class="mainlevel">M</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/N" class="mainlevel">N</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/O" class="mainlevel">O</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/P" class="mainlevel">P</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/Q" class="mainlevel">Q</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/R" class="mainlevel">R</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/S" class="mainlevel">S</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/T" class="mainlevel">T</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/U" class="mainlevel">U</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/V" class="mainlevel">V</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/W" class="mainlevel">W</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/X" class="mainlevel">X</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/Y" class="mainlevel">Y</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/Z" class="mainlevel">Z</a>
	</td></tr>
</tbody>
</table>
	</div>
<div class="moduletable">
							<h3>Popular Platforms</h3>

<table width="100%" border="0" cellpadding="0" cellspacing="0" style="font-size: 12px;">             
<tr align="left"><td><a href="/console-list" class="mainlevel">Full Platform List</a></td></tr>
<tr align="left"><td><a href="/game-soundtracks/nintendo-nes" class="mainlevel">NES</a></td></tr>   
<tr align="left"><td><a href="/game-soundtracks/nintendo-snes" class="mainlevel">SNES</a></td></tr>  
<tr align="left"><td><a href="/game-soundtracks/nintendo-64" class="mainlevel">Nintendo 64</a></td></tr> 
<tr align="left"><td><a href="/game-soundtracks/nintendo-gamecube" class="mainlevel">Nintendo Gamecube</a></td></tr> 
<tr align="left"><td><a href="/game-soundtracks/nintendo-wii" class="mainlevel">Nintendo Wii</a></td></tr>  
<tr align="left"><td><a href="/game-soundtracks/nintendo-wii-u" class="mainlevel">Nintendo Wii U</a></td></tr>
<tr align="left"><td><a href="/game-soundtracks/nintendo-switch" class="mainlevel">Nintendo Switch</a></td></tr>   
<tr align="left"><td><a href="/game-soundtracks/gameboy" class="mainlevel">Game Boy</a></td></tr> 
<tr align="left"><td><a href="/game-soundtracks/gameboy-advance" class="mainlevel">Game Boy Advance</a></td></tr>  
<tr align="left"><td><a href="/game-soundtracks/nintendo-ds" class="mainlevel">Nintendo DS</a></td></tr>     
<tr align="left"><td><a href="/game-soundtracks/nintendo-3ds" class="mainlevel">Nintendo 3DS</a></td></tr> 
<tr align="left"><td><a href="/game-soundtracks/playstation" class="mainlevel">Playstation</a></td></tr>   
<tr align="left"><td><a href="/game-soundtracks/playstation-2" class="mainlevel">Playstation 2</a></td></tr>  
<tr align="left"><td><a href="/game-soundtracks/playstation-3" class="mainlevel">Playstation 3</a></td></tr>
<tr align="left"><td><a href="/game-soundtracks/playstation-4" class="mainlevel">Playstation 4</a></td></tr>
<tr align="left"><td><a href="/game-soundtracks/playstation-5" class="mainlevel">Playstation 5</a></td></tr>
<tr align="left"><td><a href="/game-soundtracks/playstation-portable-psp" class="mainlevel">Playstation PSP</a></td></tr>   
<tr align="left"><td><a href="/game-soundtracks/playstation-vita" class="mainlevel">Playstation Vita</a></td></tr>        
<tr align="left"><td><a href="/game-soundtracks/sega-master-system" class="mainlevel">Sega Master System</a></td></tr>    
<tr align="left"><td><a href="/game-soundtracks/sega-mega-drive-genesis" class="mainlevel">Sega Genesis</a></td></tr>    
<tr align="left"><td><a href="/game-soundtracks/sega-game-gear" class="mainlevel">Sega Game Gear</a></td></tr>                       
<tr align="left"><td><a href="/game-soundtracks/sega-saturn" class="mainlevel">Sega Saturn</a></td></tr>          
<tr align="left"><td><a href="/game-soundtracks/sega-dreamcast" class="mainlevel">Sega Dreamcast</a></td></tr>       
<tr align="left"><td><a href="/game-soundtracks/windows" class="mainlevel">Windows</a></td></tr>                
<tr align="left"><td><a href="/game-soundtracks/xbox" class="mainlevel">Xbox</a></td></tr>                     
<tr align="left"><td><a href="/game-soundtracks/xbox-360" class="mainlevel">Xbox 360</a></td></tr>             
<tr align="left"><td><a href="/game-soundtracks/xbox-one" class="mainlevel">Xbox One</a></td></tr>         
<tr align="left"><td><a href="/console-list" class="mainlevel">Others</a></td></tr>  
</table>		</div>
<div class="moduletable">
							<h3>Info</h3>

<table width="100%" border="0" cellpadding="0" cellspacing="0" style="font-size: 12px;">      
<tr align="left"><td><a href="/forums/index.php?misc/contact/" class="mainlevel">Contact Me</a></td></tr>
<tr align="left"><td><a href="/faq" class="mainlevel" >F.A.Q.</a></td></tr>
<tr align="left"><td><a href="/requests" class="mainlevel" >Requests</a></td></tr>
<tr align="left"><td><a href="/blacklist" class="mainlevel" >Blacklist</a></td></tr>
<tr align="left"><td><a href="/console-tag-project" class="mainlevel" >Console Tag Project</a></td></tr>
</table>		</div>


<div class="moduletable">
							<h3>Friends</h3>

<table width="100%" border="0" cellpadding="0" cellspacing="0" style="font-size: 12px;">      
<tr align="left"><td><a href="http://www.zophar.net" class="mainlevel" >Emulators</a></td></tr>
<tr align="left"><td><a href="http://www.khinsider.com" target="_blank" class="mainlevel" >Kingdom Hearts</a></td></tr>
<tr align="left"><td><a href="http://anime.thehylia.com/" class="mainlevel">Rare Anime</a></td></tr>
</table>		</div>
		</div>
		<div id="main">

			<div id="above">

				<div id="al"></div>
				<div id="ar"></div>

			</div>


			<div id="cont">

		<table class="contentpaneopen">
				<tbody><tr>
			<td colspan="2" valign="top">
<div id=EchoTopic>
<!--<p>03/14/2015 <span style="color: red"><b>Server down</b></span> I am currently adding another downloads server. All files will be back up in a few hours.</p>-->

<h2>Search</h2>
<p align="left">Found 2 matching results.</p>

<p align="left">
			<a href="/game-soundtracks/album/rune-factory-4-soundtrack">Rune Factory 4 Soundtrack</a>
				<br>
			<a href="/game-soundtracks/album/rune-factory-4-special-original-soundtrack">Rune Factory 4 Special Original Soundtrack</a>
				<br>
	</p>

</div>
</td>
		</tr>
				</table>

		<span class="article_seperator">&nbsp;</span>
			</div>

		</div>

	</div>

	<div id="beta">
		<div id="rmenu">


					<div class="moduletable">

							<h3>
					Popular Series</h3>

<table width="100%" border="0" cellpadding="0" cellspacing="0" style="font-size: 12px;">
<tr align="left"><td><a href="/assassins-creed" class="mainlevel">Assassin's Creed</a></td></tr>
<tr align="left"><td><a href="/banjo-kazooie" class="mainlevel">Banjo Kazooie</a></td></tr>
<tr align="left"><td><a href="/bioshock" class="mainlevel">Bioshock</a></td></tr>
<tr align="left"><td><a href="/bomberman" class="mainlevel">Bomberman</a></td></tr>
<tr align="left"><td><a href="/call-of-duty" class="mainlevel">Call of Duty</a></td></tr>
<tr align="left"><td><a href="/castlevania" class="mainlevel">Castlevania</a></td></tr>
<tr align="left"><td><a href="/contra" class="mainlevel">Contra</a></td></tr>
<tr align="left"><td><a href="/cowboy-bebop" class="mainlevel">Cowboy Bebop</a></td></tr>
<tr align="left"><td><a href="/crysis" class="mainlevel">Crysis</a></td></tr>
<tr align="left"><td><a href="/diablo" class="mainlevel">Diablo</a></td></tr>
<tr align="left"><td><a href="/donkey-kong" class="mainlevel">Donkey Kong</a></td></tr>
<tr align="left"><td><a href="/dot-hack" class="mainlevel">dot Hack</a></td></tr>
<tr align="left"><td><a href="/far-cry" class="mainlevel">Far Cry</a></td></tr>
<tr align="left"><td><a href="/forza" class="mainlevel">Forza</a></td></tr>
<tr align="left"><td><a href="/gears-of-war" class="mainlevel">Gears of War</a></td></tr>
<tr align="left"><td><a href="/gensosuikoden" class="mainlevel">Genso Suikoden</a></td></tr>
<tr align="left"><td><a href="/god-of-war" class="mainlevel">God of War</a></td></tr>
<tr align="left"><td><a href="/golden-sun" class="mainlevel">Golden Sun</a></td></tr>
<tr align="left"><td><a href="/gran-turismo" class="mainlevel">Gran Turismo</a></td></tr>
<tr align="left"><td><a href="/half-life" class="mainlevel">Half-Life</a></td></tr>
<tr align="left"><td><a href="/harvest-moon" class="mainlevel">Harvest Moon</a></td></tr>
<tr align="left"><td><a href="/killzone" class="mainlevel">Killzone</a></td></tr>
<tr align="left"><td><a href="/kingdom-hearts" class="mainlevel">Kingdom Hearts</a></td></tr>
<tr align="left"><td><a href="/mario" class="mainlevel">Mario</a></td></tr>
<tr align="left"><td><a href="/mass-effect" class="mainlevel">Mass Effect</a></td></tr>
<tr align="left"><td><a href="/megaman" class="mainlevel">Mega Man</a></td></tr>
<tr align="left"><td><a href="/metal-gear-solid" class="mainlevel">Metal Gear</a></td></tr>
<tr align="left"><td><a href="/need-for-speed" class="mainlevel">Need for Speed</a></td></tr>
<tr align="left"><td><a href="/persona" class="mainlevel">Persona</a></td></tr>
<tr align="left"><td><a href="/ragnarok-online" class="mainlevel">Ragnarok Online</a></td></tr>
<tr align="left"><td><a href="/Rockman" class="mainlevel">Rockman</a></td></tr>
<tr align="left"><td><a href="/shadow-of-the-collosus" class="mainlevel">Shadow of the Colossus</a></td></tr>
<tr align="left"><td><a href="/silent-hill" class="mainlevel">Silent Hill</a></td></tr>
<tr align="left"><td><a href="/sonic" class="mainlevel">Sonic</a></td></tr>
<tr align="left"><td><a href="/soul-calibur" class="mainlevel">Soul Calibur</a></td></tr>
<tr align="left"><td><a href="/splinter-cell" class="mainlevel">Splinter Cell</a></td></tr>
<tr align="left"><td><a href="/star-wars" class="mainlevel">Star Wars</a></td></tr>
<tr align="left"><td><a href="/tekken" class="mainlevel">Tekken</a></td></tr>
<tr align="left"><td><a href="/teenage-mutant-ninja-turtles" class="mainlevel">TMNT</a></td></tr>
<tr align="left"><td><a href="/tony-hawks-pro" class="mainlevel">Tony Hawks Pro</a></td></tr>
<tr align="left"><td><a href="/uncharted" class="mainlevel">Uncharted</a></td></tr>
<tr align="left"><td><a href="/warcraft" class="mainlevel">Warcraft</a></td></tr>
<tr align="left"><td><a href="/wild-arms" class="mainlevel">Wild Arms</a></td></tr>
<tr align="left"><td><a href="/x-men" class="mainlevel">X-Men</a></td></tr>
<tr align="left"><td><a href="/zelda" class="mainlevel">Zelda</a></td></tr>
</table>	

	</div>



		</div>

	</div>

	<div id="delta">
	</div>

</div>
</td></tr></table>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-469337-11', 'auto');
  ga('send', 'pageview');

</script>
</body>
</html>
""";

const searchAlbumEmptyExample = r'''


<!DOCTYPE html PUBLIC "-//W3C//DTD Xhtml 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<script language="JavaScript" src="/files/cookies.js"></script>
<meta http-equiv='Content-Type' content='text/html; charset=utf-8'>
<title>Search - 
</title>
	<meta name="description" content="Video Game Music MP3 downloads and other media">
    	<meta name="keyowords" content="video, game, music, media, mp3">
	<meta name="robots" content="index, follow">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>

	<script language="JavaScript" type="text/javascript">
	<!--
		var browserName=navigator.appName;
		if (browserName=="Microsoft Internet Explorer")
		{
			//load ie friendly stylesheet
			document.write('<link rel="stylesheet" type="text/css" href="/images/template_ie.css">')
		}
		else
		{
			//load  stylesheet
			document.write('<link rel="stylesheet" type="text/css" href="/images/template.css">')
		}
	//-->
    </script>
    <link rel="shortcut icon" href="/images/favicon.ico">
    <link rel="stylesheet" type="text/css" href="/images/styles.css">
    <link rel="stylesheet" href="/images/audioplayer.css" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

</head>
<body>
<table id="faux"><tbody><tr><td>
<div id="page">
	<div id="alpha">

		<div id="lmenu"> 
		<div><a href="/"><h1 style="padding-left:15px;">Video<br>Game<br>Music</h2></a></div>
<div class="moduletable">
							<h3>
					Downloads				</h3>

<table border="0" cellpadding="0" cellspacing="0" width="100%" style="font-size: 12px;">
<tbody>
<tr align="left"><td><a href="/" class="mainlevel">Home</a></td></tr>
<tr align="left"><td><a href="/game-soundtracks" class="mainlevel">Music</a></td></tr>
<tr align="left"><td><a href="/cp" class="mainlevel">My Albums</a></td></tr>
<tr align="left"><td><a href="/forums/index.php?register/" class="mainlevel">Register</a></td></tr><tr align="left"><td><a href="/forums/index.php?account/upgrades" class="mainlevel">Donate <font color="red"><b><i class="material-icons" style="font-size: 11px;">favorite</i></b></font></a></td></tr>
<tr align="left"><td><a href="/forums/login" class="mainlevel">Log In</a></td></tr>
</tbody>
</table>
	</div>

<div class="moduletable">
							<h3>
					Albums </h3>

<table border="0" cellpadding="0" cellspacing="0" width="100%" style="font-size: 12px;">
<tbody>
<tr align="left"><td><a href="/top40" class="mainlevel">Top 40</a></td></tr>
<tr align="left"><td><a href="/all-time-top-100" class="mainlevel">Top 1000 All Time</a></td></tr>
<tr align="left"><td><a href="/last-6-months-top-100" class="mainlevel">Top 100 Last 6 Months</a></td></tr>
<tr align="left"><td><a href="/top-100-newly-added" class="mainlevel">Top 100 Newly Added</a></td></tr>
<tr align="left"><td><a href="/random-album" class="mainlevel">Random Album</a></td></tr>
<tr align="left"><td><a href="/random-song" class="mainlevel">Random Song</a></td></tr>
</tbody>
</table>
	</div>


<div class="moduletable">
							<h3>
					Album Search				</h3>


		<form action="/search" method="get">
			<input type="text" name="search" style="width: 140px;" value="rune factory 6"> <input type="submit" value="Search">
		</form>
	</div>

<div class="moduletable">
							<h3>
					Albums By Letter				</h3>

<table border="0" cellpadding="0" cellspacing="0" width="100%" style="font-size: 12px;">
<tbody>

<tr align="left">
<td>
			<a href="/game-soundtracks/browse/%23" class="mainlevel">#</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/A" class="mainlevel">A</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/B" class="mainlevel">B</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/C" class="mainlevel">C</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/D" class="mainlevel">D</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/E" class="mainlevel">E</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/F" class="mainlevel">F</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/G" class="mainlevel">G</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/H" class="mainlevel">H</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/I" class="mainlevel">I</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/J" class="mainlevel">J</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/K" class="mainlevel">K</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/L" class="mainlevel">L</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/M" class="mainlevel">M</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/N" class="mainlevel">N</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/O" class="mainlevel">O</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/P" class="mainlevel">P</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/Q" class="mainlevel">Q</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/R" class="mainlevel">R</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/S" class="mainlevel">S</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/T" class="mainlevel">T</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/U" class="mainlevel">U</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/V" class="mainlevel">V</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/W" class="mainlevel">W</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/X" class="mainlevel">X</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/Y" class="mainlevel">Y</a>
	</td></tr>
<tr align="left">
<td>
			<a href="/game-soundtracks/browse/Z" class="mainlevel">Z</a>
	</td></tr>
</tbody>
</table>
	</div>
<div class="moduletable">
							<h3>Popular Platforms</h3>

<table width="100%" border="0" cellpadding="0" cellspacing="0" style="font-size: 12px;">             
<tr align="left"><td><a href="/console-list" class="mainlevel">Full Platform List</a></td></tr>
<tr align="left"><td><a href="/game-soundtracks/nintendo-nes" class="mainlevel">NES</a></td></tr>   
<tr align="left"><td><a href="/game-soundtracks/nintendo-snes" class="mainlevel">SNES</a></td></tr>  
<tr align="left"><td><a href="/game-soundtracks/nintendo-64" class="mainlevel">Nintendo 64</a></td></tr> 
<tr align="left"><td><a href="/game-soundtracks/nintendo-gamecube" class="mainlevel">Nintendo Gamecube</a></td></tr> 
<tr align="left"><td><a href="/game-soundtracks/nintendo-wii" class="mainlevel">Nintendo Wii</a></td></tr>  
<tr align="left"><td><a href="/game-soundtracks/nintendo-wii-u" class="mainlevel">Nintendo Wii U</a></td></tr>
<tr align="left"><td><a href="/game-soundtracks/nintendo-switch" class="mainlevel">Nintendo Switch</a></td></tr>   
<tr align="left"><td><a href="/game-soundtracks/gameboy" class="mainlevel">Game Boy</a></td></tr> 
<tr align="left"><td><a href="/game-soundtracks/gameboy-advance" class="mainlevel">Game Boy Advance</a></td></tr>  
<tr align="left"><td><a href="/game-soundtracks/nintendo-ds" class="mainlevel">Nintendo DS</a></td></tr>     
<tr align="left"><td><a href="/game-soundtracks/nintendo-3ds" class="mainlevel">Nintendo 3DS</a></td></tr> 
<tr align="left"><td><a href="/game-soundtracks/playstation" class="mainlevel">Playstation</a></td></tr>   
<tr align="left"><td><a href="/game-soundtracks/playstation-2" class="mainlevel">Playstation 2</a></td></tr>  
<tr align="left"><td><a href="/game-soundtracks/playstation-3" class="mainlevel">Playstation 3</a></td></tr>
<tr align="left"><td><a href="/game-soundtracks/playstation-4" class="mainlevel">Playstation 4</a></td></tr>
<tr align="left"><td><a href="/game-soundtracks/playstation-5" class="mainlevel">Playstation 5</a></td></tr>
<tr align="left"><td><a href="/game-soundtracks/playstation-portable-psp" class="mainlevel">Playstation PSP</a></td></tr>   
<tr align="left"><td><a href="/game-soundtracks/playstation-vita" class="mainlevel">Playstation Vita</a></td></tr>        
<tr align="left"><td><a href="/game-soundtracks/sega-master-system" class="mainlevel">Sega Master System</a></td></tr>    
<tr align="left"><td><a href="/game-soundtracks/sega-mega-drive-genesis" class="mainlevel">Sega Genesis</a></td></tr>    
<tr align="left"><td><a href="/game-soundtracks/sega-game-gear" class="mainlevel">Sega Game Gear</a></td></tr>                       
<tr align="left"><td><a href="/game-soundtracks/sega-saturn" class="mainlevel">Sega Saturn</a></td></tr>          
<tr align="left"><td><a href="/game-soundtracks/sega-dreamcast" class="mainlevel">Sega Dreamcast</a></td></tr>       
<tr align="left"><td><a href="/game-soundtracks/windows" class="mainlevel">Windows</a></td></tr>                
<tr align="left"><td><a href="/game-soundtracks/xbox" class="mainlevel">Xbox</a></td></tr>                     
<tr align="left"><td><a href="/game-soundtracks/xbox-360" class="mainlevel">Xbox 360</a></td></tr>             
<tr align="left"><td><a href="/game-soundtracks/xbox-one" class="mainlevel">Xbox One</a></td></tr>         
<tr align="left"><td><a href="/console-list" class="mainlevel">Others</a></td></tr>  
</table>		</div>
<div class="moduletable">
							<h3>Info</h3>

<table width="100%" border="0" cellpadding="0" cellspacing="0" style="font-size: 12px;">      
<tr align="left"><td><a href="/forums/index.php?misc/contact/" class="mainlevel">Contact Me</a></td></tr>
<tr align="left"><td><a href="/faq" class="mainlevel" >F.A.Q.</a></td></tr>
<tr align="left"><td><a href="/requests" class="mainlevel" >Requests</a></td></tr>
<tr align="left"><td><a href="/blacklist" class="mainlevel" >Blacklist</a></td></tr>
<tr align="left"><td><a href="/console-tag-project" class="mainlevel" >Console Tag Project</a></td></tr>
</table>		</div>


<div class="moduletable">
							<h3>Friends</h3>

<table width="100%" border="0" cellpadding="0" cellspacing="0" style="font-size: 12px;">      
<tr align="left"><td><a href="http://www.zophar.net" class="mainlevel" >Emulators</a></td></tr>
<tr align="left"><td><a href="http://www.khinsider.com" target="_blank" class="mainlevel" >Kingdom Hearts</a></td></tr>
<tr align="left"><td><a href="http://anime.thehylia.com/" class="mainlevel">Rare Anime</a></td></tr>
</table>		</div>
		</div>
		<div id="main">

			<div id="above">

				<div id="al"></div>
				<div id="ar"></div>

			</div>


			<div id="cont">

		<table class="contentpaneopen">
				<tbody><tr>
			<td colspan="2" valign="top">
<div id=EchoTopic>
<!--<p>03/14/2015 <span style="color: red"><b>Server down</b></span> I am currently adding another downloads server. All files will be back up in a few hours.</p>-->

<h2>Search</h2>
<p align="left">Found 0 matching results.</p>

<p align="left">
	</p>

</div>
</td>
		</tr>
				</table>

		<span class="article_seperator">&nbsp;</span>
			</div>

		</div>

	</div>

	<div id="beta">
		<div id="rmenu">


					<div class="moduletable">

							<h3>
					Popular Series</h3>

<table width="100%" border="0" cellpadding="0" cellspacing="0" style="font-size: 12px;">
<tr align="left"><td><a href="/assassins-creed" class="mainlevel">Assassin's Creed</a></td></tr>
<tr align="left"><td><a href="/banjo-kazooie" class="mainlevel">Banjo Kazooie</a></td></tr>
<tr align="left"><td><a href="/bioshock" class="mainlevel">Bioshock</a></td></tr>
<tr align="left"><td><a href="/bomberman" class="mainlevel">Bomberman</a></td></tr>
<tr align="left"><td><a href="/call-of-duty" class="mainlevel">Call of Duty</a></td></tr>
<tr align="left"><td><a href="/castlevania" class="mainlevel">Castlevania</a></td></tr>
<tr align="left"><td><a href="/contra" class="mainlevel">Contra</a></td></tr>
<tr align="left"><td><a href="/cowboy-bebop" class="mainlevel">Cowboy Bebop</a></td></tr>
<tr align="left"><td><a href="/crysis" class="mainlevel">Crysis</a></td></tr>
<tr align="left"><td><a href="/diablo" class="mainlevel">Diablo</a></td></tr>
<tr align="left"><td><a href="/donkey-kong" class="mainlevel">Donkey Kong</a></td></tr>
<tr align="left"><td><a href="/dot-hack" class="mainlevel">dot Hack</a></td></tr>
<tr align="left"><td><a href="/far-cry" class="mainlevel">Far Cry</a></td></tr>
<tr align="left"><td><a href="/forza" class="mainlevel">Forza</a></td></tr>
<tr align="left"><td><a href="/gears-of-war" class="mainlevel">Gears of War</a></td></tr>
<tr align="left"><td><a href="/gensosuikoden" class="mainlevel">Genso Suikoden</a></td></tr>
<tr align="left"><td><a href="/god-of-war" class="mainlevel">God of War</a></td></tr>
<tr align="left"><td><a href="/golden-sun" class="mainlevel">Golden Sun</a></td></tr>
<tr align="left"><td><a href="/gran-turismo" class="mainlevel">Gran Turismo</a></td></tr>
<tr align="left"><td><a href="/half-life" class="mainlevel">Half-Life</a></td></tr>
<tr align="left"><td><a href="/harvest-moon" class="mainlevel">Harvest Moon</a></td></tr>
<tr align="left"><td><a href="/killzone" class="mainlevel">Killzone</a></td></tr>
<tr align="left"><td><a href="/kingdom-hearts" class="mainlevel">Kingdom Hearts</a></td></tr>
<tr align="left"><td><a href="/mario" class="mainlevel">Mario</a></td></tr>
<tr align="left"><td><a href="/mass-effect" class="mainlevel">Mass Effect</a></td></tr>
<tr align="left"><td><a href="/megaman" class="mainlevel">Mega Man</a></td></tr>
<tr align="left"><td><a href="/metal-gear-solid" class="mainlevel">Metal Gear</a></td></tr>
<tr align="left"><td><a href="/need-for-speed" class="mainlevel">Need for Speed</a></td></tr>
<tr align="left"><td><a href="/persona" class="mainlevel">Persona</a></td></tr>
<tr align="left"><td><a href="/ragnarok-online" class="mainlevel">Ragnarok Online</a></td></tr>
<tr align="left"><td><a href="/Rockman" class="mainlevel">Rockman</a></td></tr>
<tr align="left"><td><a href="/shadow-of-the-collosus" class="mainlevel">Shadow of the Colossus</a></td></tr>
<tr align="left"><td><a href="/silent-hill" class="mainlevel">Silent Hill</a></td></tr>
<tr align="left"><td><a href="/sonic" class="mainlevel">Sonic</a></td></tr>
<tr align="left"><td><a href="/soul-calibur" class="mainlevel">Soul Calibur</a></td></tr>
<tr align="left"><td><a href="/splinter-cell" class="mainlevel">Splinter Cell</a></td></tr>
<tr align="left"><td><a href="/star-wars" class="mainlevel">Star Wars</a></td></tr>
<tr align="left"><td><a href="/tekken" class="mainlevel">Tekken</a></td></tr>
<tr align="left"><td><a href="/teenage-mutant-ninja-turtles" class="mainlevel">TMNT</a></td></tr>
<tr align="left"><td><a href="/tony-hawks-pro" class="mainlevel">Tony Hawks Pro</a></td></tr>
<tr align="left"><td><a href="/uncharted" class="mainlevel">Uncharted</a></td></tr>
<tr align="left"><td><a href="/warcraft" class="mainlevel">Warcraft</a></td></tr>
<tr align="left"><td><a href="/wild-arms" class="mainlevel">Wild Arms</a></td></tr>
<tr align="left"><td><a href="/x-men" class="mainlevel">X-Men</a></td></tr>
<tr align="left"><td><a href="/zelda" class="mainlevel">Zelda</a></td></tr>
</table>	

	</div>



		</div>

	</div>

	<div id="delta">
	</div>

</div>
</td></tr></table>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-469337-11', 'auto');
  ga('send', 'pageview');

</script>
</body>
</html>
''';