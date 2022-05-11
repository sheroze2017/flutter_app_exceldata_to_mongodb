// import 'package:flutter/material.dart';
// import 'package:hive/hive.dart';
// import 'package:mongo_dart/mongo_dart.dart';
// import 'package:ubitbackend/Models/student_model.dart';

// import '../widgets/drop.dart';

// class studentDashboard extends StatefulWidget {
//   const studentDashboard({Key? key}) : super(key: key);

//   @override
//   State<studentDashboard> createState() => _studentDashboardState();
// }

// class _studentDashboardState extends State<studentDashboard> {
//   final myController = TextEditingController();

//   Box<student_model>? box;
//   @override
//   void dispose() {
//     // Clean up the controller when the widget is disposed.
//     myController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     var scrsize = MediaQuery.of(context).size;
//     var height = scrsize.height;
//     var width = scrsize.width;
//     var seat = <String>[];
//     var name = <String>[];
//     var seatNo = <String>[];
//     var stuEpNo = <String>[];
//     String? selectShif;
//     String? selectsec;
//     String? selectyear;

//     List<String> shift = [
//       'Evening Batch',
//       'Morning Batch',
//     ];
//     List<String> sec = [
//       'BSCS sec A',
//       'BSCS sec B',
//       'BSSE sec A',
//       'BSSE sec B',
//     ];
//     List<String> year = [
//       'First year',
//       'Second year',
//       'Third year',
//       'Fourth Year',
//     ];

//     return Scaffold(
//       appBar: AppBar(title: Text('Dashboard')),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.all(15),
//           child: Column(
//             children: [
//               Container(
//                 height: height / 3,
//                 width: width / 2,
//                 color: Colors.grey,
//                 child: Column(
//                   children: [
//                     Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: drop(
//                           item: shift,
//                           valueChoose: selectShif,
//                           name: 'Select Shift',
//                         )),
//                     Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: drop(
//                           item: sec,
//                           valueChoose: selectsec,
//                           name: 'Select Section',
//                         )),
//                     Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: drop(
//                           item: year,
//                           valueChoose: selectyear,
//                           name: 'Select Year',
//                         )),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: height / 6,
//               ),
//               Card(
//                   color: Colors.grey,
//                   child: Padding(
//                     padding: EdgeInsets.all(28.0),
//                     child: TextField(
//                       controller: myController,
//                       maxLines: null,
//                       decoration: InputDecoration.collapsed(
//                           hintText: "Enter your text here"),
//                     ),
//                   )),
//               MaterialButton(
//                 onPressed: () async {
//                   seat = myController.text.split('\t');
//                   for (int j = 0; j < seat.length; j++) {
//                     seatNo.addAll(seat[j].split('\n'));
//                   }
//                   // print(seatNo[0]);
//                   // print(seatNo[1]);
//                   // print(seatNo[2]);
//                   // print(seatNo[3]);
//                   // print(seatNo[15]);

//                   for (int i = 0; i < seatNo.length - 1; i++) {
//                     print(seatNo[i]);
//                     if (i % 2 != 0) {
//                       name.add(seatNo[i]);
//                     } else {
//                       stuEpNo.add(seatNo[i]);
//                     }
//                   }
//                   print(stuEpNo);
//                   print('break');
//                   print(name);
//                   print(selectShif);
//                   print(selectsec);
//                   print(selectyear);

// // var res
// //                   MongoDatabase.insert();

// //                   myController.clear();
//                 },
//                 child: Text('push'),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   _insertRecord(String name, String seatNo, String boxName) async {
//     student_model data =
//         student_model(id: randomId, name: name, seatNo: seatNo);
//     if (Hive.isBoxOpen(boxName)) {
//       box = await Hive.openBox<student_model>(boxName);
//     }
//     box = Hive.box<student_model>(boxName);
//     var result = box!.add(data);
//   }
// }
