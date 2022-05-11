// import 'package:flutter/material.dart';
// import 'package:hive/hive.dart';
// import 'package:ubitbackend/Models/student_model.dart';
// import 'package:hive_flutter/hive_flutter.dart';

// class display_data extends StatefulWidget {
//   const display_data({Key? key}) : super(key: key);

//   @override
//   State<display_data> createState() => _display_dataState();
// }

// class _display_dataState extends State<display_data> {
//   late Box<student_model> box;

//   @override
//   void initState() {
//     super.initState();
//     _openBox('face');
//   }

//   _openBox(String boxName) async {
//     if (!Hive.isBoxOpen(boxName)) {
//       await Hive.openBox<student_model>(boxName);
//     }
//     box = Hive.box<student_model>(boxName);
//     print(Hive.isBoxOpen(boxName));
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: Center(
//               child: box == null
//                   ? CircularProgressIndicator()
//                   : ValueListenableBuilder(
//                       valueListenable: box!.listenable(),
//                       builder: (context, Box<student_model> data, _) {
//                         List<int> keys = data.keys.cast<int>().toList();
//                         return ListView.builder(
//                             itemCount: keys.length,
//                             itemBuilder: (_, index) {
//                               student_model? record = data.get(keys[index]);
//                               return displayWidget(record!);
//                             });
//                       },
//                     ))),
//     );
//   }

//   displayWidget(student_model data) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Card(
//         child: Column(
//           children: [
//             Text('${data.name}'),
//             Text('${data.seatNo}'),
//             Text('${data.id}'),
//           ],
//         ),
//       ),
//     );
//   }
// }
