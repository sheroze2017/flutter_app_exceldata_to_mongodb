// class User {
//   final String id;
//   final String name;
//   final String seatNo;
//   final String sec;
//   final String shift;
//   final String year;
//   User({
//     required this.id,
//     required this.name,
//     required this.seatNo,
//     required this.sec,
//     required this.shift,
//     required this.year,
//   });

//   factory User.fromJSON(Map<String, dynamic> json) {
//     return User(
//         id: json['id'] as String,
//         name: json['name'] as String,
//         seatNo: json['seatNo'] as String,
//         sec: json['sec'] as String,
//         shift: json['shift'] as String,
//         year: json['year'] as String);
//   }
// }

class User {
  String? id;
  String? name;
  String? seatNo;
  String? year;
  String? sec;
  String? shift;

  User({this.id, this.name, this.seatNo, this.year, this.sec, this.shift});

  User.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    name = json['name'];
    seatNo = json['seatNo'];
    year = json['year'];
    sec = json['sec'];
    shift = json['shift'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
    data['_id'] = this.id;
    data['name'] = this.name;
    data['seatNo'] = this.seatNo;
    data['year'] = this.year;
    data['sec'] = this.sec;
    data['shift'] = this.shift;
    return data;
  }
}











// // To parse this JSON data, do
// //
// //     final user = userFromJson(jsonString);

// import 'dart:convert';

// List<User> userFromJson(String str) =>
//     List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

// String userToJson(List<User> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class User {
//   User({
//     required this.id,
//     required this.name,
//     required this.seatNo,
//     required this.year,
//     required this.sec,
//     required this.shift,
//   });

//   String id;
//   String name;
//   String seatNo;
//   String year;
//   String sec;
//   String shift;

//   factory User.fromJson(Map<String, dynamic> json) => User(
//         id: json["_id"] as String,
//         name: json["name"] as String,
//         seatNo: json["seatNo"] as String,
//         year: json["year"] as String,
//         sec: json["sec"] as String,
//         shift: json["shift"] as String,
//       );

//   Map<String, dynamic> toJson() => {
//         "_id": id,
//         "name": name,
//         "seatNo": seatNo,
//         "year": year,
//         "sec": sec,
//         "shift": shift,
//       };
// }
