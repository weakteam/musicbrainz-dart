import 'package:musicbrainz_dart/ms.dart';

void main() {
  MusicBrainz.searchArtist("nirvana").then((artists) {
    for (var i = 0; i < artists.length; i++) {
      print('${i + 1}: name=${artists[i].name} id=${artists[i].id}');
    }
  });
}
