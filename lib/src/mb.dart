import 'dart:convert';

import 'package:http/http.dart' as http;

import 'model/artist.dart';
import 'model/recording.dart';
import 'model/recording.dart';
import 'model/recording.dart';
import 'req/common.dart';

class MusicBrainz {
  static Future<List<Artist>> searchArtist(String artist) async {
    var url = Url.buildArtistSearch(artist);
    print(url);
    var res = await http.get(url).then((res) => jsonDecode(res.body));
    if (res["error"] != null) {
      throw ("Error: " + res["error"] + "\n For help: " + res["help"]);
    }
    var array = (res["artists"] as List<dynamic>).cast<Map<String, dynamic>>();
    List<Artist> artists = [];
    for (var artist in array) {
      artists.add(Artist.fromJson(artist));
    }
    return artists;
  }

  static Future<List<Recording>> searchRecording(String recordTitle) async {
    var url = Url.buildRecordingSearch(recordTitle);
    print(url);
    var res = await http.get(url).then((res) => jsonDecode(res.body));
    if (res["error"] != null) {
      throw ("Error: " + res["error"] + "\n For help: " + res["help"]);
    }
    var array = (res["recordings"] as List<dynamic>).cast<Map<String, dynamic>>();
    List<Recording> recordings = [];
    for (var artist in array) {
      recordings.add(Recording.fromJson(artist));
    }
    print(recordings);
  }
}
