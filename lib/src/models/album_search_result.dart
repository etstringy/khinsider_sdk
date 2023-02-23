// A class to store data returned when running a search

class AlbumSearchResult {
  final String id;
  final String name;
  final Uri? iconUrl;
  final String? type;
  final String? year;
  final String? platform;

  // constructor
  AlbumSearchResult({
    required this.id,
    required this.name,
    this.iconUrl,
    this.type,
    this.year,
    this.platform,
  });

  @override
  String toString() {
    return 'AlbumSearchResult{id: $id, name: $name, iconurl: $iconUrl, type: $type, year: $year, platform: $platform}';
  }
}
