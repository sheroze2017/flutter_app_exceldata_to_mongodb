import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:ubitbackend/Models/student_model.dart';
import 'package:ubitbackend/connection.dart';
import 'package:ubitbackend/screen/display_data.dart';
import 'package:ubitbackend/screen/student_enroll.dart';
import 'package:ubitbackend/screen/student_enroll_dashboard.dart';
import 'package:ubitbackend/screen/teacher_marking.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized;
  // await Hive.initFlutter();
  // Hive.registerAdapter(studentmodelAdapter());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  // Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: student_enroll(),
      // FutureBuilder(
      //   // future: _initialization,
      //   builder: (context, snapshot) {
      //     if (snapshot.hasError) {
      //       print('error');
      //     }
      //     if (snapshot.connectionState == ConnectionState.done) {
      //       return teacherGrading();
      //     }
      //     return CircularProgressIndicator();
      //   },
      // ),
    );
  }
}
