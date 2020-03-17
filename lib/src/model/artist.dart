import 'dart:convert';

class Artist {
  String id;
  String type;
  String typeID;
  int score;
  String name;
  String sortName;
  String country;
  String disambiguation;

  // TODO
  Object area;
  Object beginArea;
  Object isnis;
  Object lifeSpan;
  Object aliases;
  Object tags;

  Artist.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        type = json['type'],
        typeID = json["type-id"],
        score = json["score"],
        name = json["name"],
        sortName = json["sort-name"],
        country = json["country"],
        disambiguation = json["disambiguation"];
}
