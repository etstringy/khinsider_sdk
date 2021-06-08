# Khinsider SDK
[![Library Tests](https://github.com/SebastianLiando/khinsider_sdk/actions/workflows/dart.yml/badge.svg)](https://github.com/SebastianLiando/khinsider_sdk/actions/workflows/dart.yml)

An SDK to get video game music files from [Khinsider](https://downloads.khinsider.com).

## Features
- Query for a list of albums
- Query an album to get all the available soundtracks
- Get the download link of a soundtrack for all the available formats

## Getting Started
Instantiate a `Khinsider` object to get access to the available features.

```dart 
Khinsider client = Khinsider();
```

### List Albums
Call `searchAlbums(String query)` method. This method returns a `Map` object with keys as the id and the values as the name.

The returned `Map` is a list of albums for the given `query`. It behaves the same way as searching for an album in [Khinsider](https://downloads.khinsider.com).

> Note that the **query string length must be 3 and above**. This is the condition that Khinsider requires.

```dart
Map<String, String> albums = await client.searchAlbums('Hello');

// Get an album id
String firstAlbumId = albums.keys.first;
// Get an album name
String firstAlbumName = albums[firstAlbumId];
```

### Get Album
Call `getAlbum(String albumId)` method. This method returns an `Album` object.

The `Album` object contains the album details, such as the list of song ids available, cover images (if any), and other related albums.

```dart
Album album = await client.getAlbum(firstAlbumId);

// Get the available soundtracks
List<Soundtrack> songs = album.soundtracks;
// Get the first soundtrack id
String firstSongId = songs.first.id;
```


### Get Soundtrack Download Link
Call `getSoundFiles(String albumId, String soundId)` method. This returns a `Map` object with soundtrack file format as the id and the soundtrack download link as the value.

> All albums contain the mp3 file format. Some albums might have other formats such as FLAC, ogg, m4a, etc.

```dart
Map<String, Uri> soundFiles = await client.getSoundFiles(firstAlbumId, firstSongId);

// Use the file format as a key to get the download link
Uri mp3Link = soundFiles['mp3'];
```