import 'package:flutter/material.dart';

class student_marks_row extends StatefulWidget {
  const student_marks_row({Key? key}) : super(key: key);

  @override
  State<student_marks_row> createState() => _student_marks_rowState();
}

class _student_marks_rowState extends State<student_marks_row> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Student Name",
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          Text(
            "Seat No",
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          Text(
            "Theory Marks Obtained",
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.italic),
          ),
          Text(
            "Lab Marks",
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.italic),
          )
        ],
      ),
    );
  }
}
