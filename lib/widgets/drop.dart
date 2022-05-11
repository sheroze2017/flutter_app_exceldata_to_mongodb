import 'package:flutter/material.dart';

class drop<String> extends StatefulWidget {
  String? valueChoose;
  List<String> item;
  String name;
  drop({
    Key? key,
    required this.valueChoose,
    required this.item,
    required this.name,
  }) : super(key: key);

  @override
  State<drop> createState() => _dropState();
}

class _dropState extends State<drop> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      hint: Text(widget.name),
      dropdownColor: Colors.grey[300],
      icon: Icon(Icons.arrow_drop_down_circle),
      iconSize: 20,
      style: TextStyle(color: Colors.black, fontSize: 13),
      value: widget.valueChoose,
      onChanged: (newValue) {
        setState(() {
          widget.valueChoose = newValue.toString();

          print(widget.valueChoose);
        });
      },
      items: widget.item.map((valueItem) {
        return DropdownMenuItem(
            child: Text(valueItem.toString()), value: valueItem.toString());
      }).toList(),
    );
  }
}
