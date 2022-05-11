// To parse this JSON data, do
//
//     final empty = emptyFromJson(jsonString);

import 'dart:convert';

import 'package:mongo_dart/mongo_dart.dart';

Empty emptyFromJson(String str) => Empty.fromJson(json.decode(str));

String emptyToJson(Empty data) => json.encode(data.toJson());

class Empty {
  Empty({
    required this.id,
    required this.name,
    required this.seatNo,
  });

  ObjectId id;
  String name;
  String seatNo;

  factory Empty.fromJson(Map<String, dynamic> json) => Empty(
        id: json["_id"],
        name: json["name"],
        seatNo: json["seatNo"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "seatNo": seatNo,
      };
}
