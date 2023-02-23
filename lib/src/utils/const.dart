/// The base URL for querying list of albums.
const BASE_URL_SEARCH = 'https://downloads.khinsider.com/search?search=';

/// The base URL for an album.
const BASE_ALBUM_URL =
    'https://downloads.khinsider.com/game-soundtracks/album/';

/// The base URL for album cover images.
const BASE_COVER_URL = 'https://vgmsite.com/soundtracks/{id}/thumbs/';

/// The base URL for a soundtrack sound file.
const BASE_SOUND_FILE_URL = 'https://vgmsite.com/soundtracks/';

const ALBUMS_ANCHOR_HREF_START = '/game-soundtracks/album';

const DATE_ADDED = 'Date Added:';

/// The ID for the <th> tag of the song lists.
const SONGLIST_HEADER_ID = 'songlist_header';

/// The starting index of <th> that specifies the audio format.
const SOUND_FORMAT_START_INDEX = 3;

/// The HTML class name that contains the soundtrack ID
const SOUNDTRACK_ID_CLASS = 'clickable-row';

/// The separator used by Khinsider for the song duration.
const SOUNDTRACK_DURATION_SEPARATOR = ':';

/// The <table> id for the soundtrack table.
const SOUNDTRACK_TABLE_ID = 'songlist';
