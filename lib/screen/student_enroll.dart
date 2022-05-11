import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:ubitbackend/Models/student_model.dart';
import 'package:ubitbackend/connection.dart';
import 'package:ubitbackend/widgets/drop.dart';
import 'package:uuid/uuid.dart';

class student_enroll extends StatefulWidget {
  const student_enroll({Key? key}) : super(key: key);

  @override
  State<student_enroll> createState() => _student_enrollState();
}

class _student_enrollState extends State<student_enroll> {
  final myController = TextEditingController();
  // final databaseRef = FirebaseDatabase.instance();
  // Box<student_model>? box;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var scrsize = MediaQuery.of(context).size;
    var height = scrsize.height;
    var width = scrsize.width;
    var seat = <String>[];
    var name = <String>[];
    var seatNo = <String>[];
    var stuEpNo = <String>[];
    String? selectShif;
    String? selectsec;
    String? selectyear;

    List<String> shift = [
      'Evening Batch',
      'Morning Batch',
    ];
    List<String> sec = [
      'BSCS sec A',
      'BSCS sec B',
      'BSSE sec A',
      'BSSE sec B',
    ];
    List<String> year = [
      'First year',
      'Second year',
      'Third year',
      'Fourth Year',
    ];

    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                height: height / 3,
                width: width / 2,
                color: Colors.grey,
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DropdownButton<String>(
                          hint: Text('Select Shift'),
                          dropdownColor: Colors.grey[300],
                          icon: Icon(Icons.arrow_drop_down_circle),
                          iconSize: 20,
                          style: TextStyle(color: Colors.black, fontSize: 13),
                          value: selectShif,
                          onChanged: (newValue) {
                            selectShif = newValue;
                            print(selectShif.toString());
                          },
                          items: shift.map((valueItem) {
                            return DropdownMenuItem(
                                child: Text(valueItem.toString()),
                                value: valueItem.toString());
                          }).toList(),
                        )
                        // drop(
                        //   item: shift,
                        //   valueChoose: selectShif,
                        //   name: 'Select Shift',
                        // )
                        ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DropdownButton<String>(
                          hint: Text('Select Section'),
                          dropdownColor: Colors.grey[300],
                          icon: Icon(Icons.arrow_drop_down_circle),
                          iconSize: 20,
                          style: TextStyle(color: Colors.black, fontSize: 13),
                          value: selectsec,
                          onChanged: (newValue) {
                            selectsec = newValue;
                            print(selectsec.toString());
                          },
                          items: sec.map((valueItem) {
                            return DropdownMenuItem(
                                child: Text(valueItem.toString()),
                                value: valueItem.toString());
                          }).toList(),
                        )),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DropdownButton<String>(
                          hint: Text('Select Year'),
                          dropdownColor: Colors.grey[300],
                          icon: Icon(Icons.arrow_drop_down_circle),
                          iconSize: 20,
                          style: TextStyle(color: Colors.black, fontSize: 13),
                          value: selectyear,
                          onChanged: (newValue) {
                            selectyear = newValue;
                            print(selectyear.toString());
                          },
                          items: year.map((valueItem) {
                            return DropdownMenuItem(
                                child: Text(valueItem.toString()),
                                value: valueItem.toString());
                          }).toList(),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: height / 6,
              ),
              Card(
                  color: Colors.grey,
                  child: Padding(
                    padding: EdgeInsets.all(28.0),
                    child: TextField(
                      controller: myController,
                      maxLines: null,
                      decoration: InputDecoration.collapsed(
                          hintText: "Enter your text here"),
                    ),
                  )),
              MaterialButton(
                onPressed: () {
                  seat = myController.text.split('\t');
                  for (int j = 0; j < seat.length; j++) {
                    seatNo.addAll(seat[j].split('\n'));
                  }
                  // print(seatNo[0]);
                  // print(seatNo[1]);
                  // print(seatNo[2]);
                  // print(seatNo[3]);
                  // print(seatNo[15]);

                  for (int i = 0; i < seatNo.length - 1; i++) {
                    print(seatNo[i]);
                    if (i % 2 != 0) {
                      name.add(seatNo[i]);
                    } else {
                      stuEpNo.add(seatNo[i]);
                    }
                  }
                  print(stuEpNo);
                  print('break');
                  print(name);
                  print(selectShif);
                  print(selectsec);
                  print(selectyear);
                  for (var i = 0; i < seatNo.length; i++) {
                    AuthService().createUser(
                        name[i].toString(),
                        stuEpNo[i].toString(),
                        selectyear.toString(),
                        selectsec.toString(),
                        selectShif.toString());
                  }
                },
                child: Text('push'),
              )
            ],
          ),
        ),
      ),
    );
  }

  // _insertRecord(String name, String seatNo, String boxName) async {
  //   var randomId = Uuid().v4();
  //   student_model data =
  //       student_model(id: randomId, name: name, seatNo: seatNo);
  //   if (!Hive.isBoxOpen(boxName)) {
  //     box = await Hive.openBox<student_model>(boxName);
  //   }
  //   box = Hive.box<student_model>(boxName);
  //   var result = await box!.add(data);
  //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //     content: Text("Result : ${result}"),
  //   ));
  // }
}
