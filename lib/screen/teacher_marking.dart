import 'dart:convert';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:ubitbackend/connection.dart';
import 'package:ubitbackend/widgets/appBar.dart';
import 'package:ubitbackend/widgets/student_marks_info.dart';
import 'package:http/http.dart' as http;
import '../Models/userModel.dart';

class teacherGrading extends StatefulWidget {
  const teacherGrading({Key? key}) : super(key: key);

  @override
  State<teacherGrading> createState() => _teacherGradingState();
}

class _teacherGradingState extends State<teacherGrading> {
  List<User> userList = [];
  Future<List<User>> getAllUser() async {
    final response = await http.get(Uri.parse('http://localhost:3000/getall'));
    var body = json.decode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map i in body) {
        userList.add(User.fromJson(i));
      }
      return userList;
    } else {
      return userList;
    }
  }

  @override
  void initState() {
    super.initState();
    // AuthService().getAllUser();
    // Users = AuthService().getAllUser();
  }

  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: appbar(),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 28, 8, 8),
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: screenSize.height / 4,
                  width: screenSize.width / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Teacher Name'),
                      Text('Student Enroll'),
                      Text('Course No'),
                      Text('Year'),
                      Text('Shift'),
                    ],
                  ),
                ),
              ),
              // student_marks_row(),
              // student_marks_row(),
              // student_marks_row(),
              // student_marks_row(),
              FutureBuilder(
                future: getAllUser(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        // itemCount: Users.length,
                        itemCount: userList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Text(index.toString());
                        });
                  } else {
                    return Text(snapshot.data.toString());
                  }
                },
              ),

              //   List<dynamic>? data = snapshot.data;
              //   return ListView.builder(
              //       itemCount: data?.length,
              //       itemBuilder: (BuildContext context, int index) {
              //         return Container(
              //           color: Colors.grey,
              //           child: Center(child: Text(data![index]['name'])),
              //         );
              //       });
              // } else if (snapshot.hasError) {
              //   return Text('${snapshot.error}');
              // }

              // // By default, show a loading spinner.
              // return const CircularProgressIndicator();

              //),

              MaterialButton(
                onPressed: () {
                  //   getAllUser();
                },
                child: Text("hello"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
