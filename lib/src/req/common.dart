class Url {
  static const BASE_URL = 'http://musicbrainz.org/ws/2/';
  static const JSON_SUFFIX = "&fmt=json";
  static const URL =
      'http://musicbrainz.org/ws/2/artist/?query=artist:fred%20AND%20type:group%20AND%20country:US&fmt=json';
  static const URL_SEPARATOR = "/";
  static const PREFIX_QUERY = "?query=";
  static const PREFIX_ARTIST = "artist";
  static const PREFIX_RCORDING = "recording";

  static String buildArtistSearch(String artist) {
    return BASE_URL +
        PREFIX_ARTIST +
        URL_SEPARATOR +
        PREFIX_QUERY +
        "artist:" +
        Uri.encodeComponent(artist) +
        JSON_SUFFIX;
  }

  static String buildRecordingSearch(String recordTitle) {
    return BASE_URL +
        PREFIX_RCORDING +
        URL_SEPARATOR +
        PREFIX_QUERY +
        "recording:" +
        Uri.encodeComponent(recordTitle) +
        JSON_SUFFIX;
  }
}
