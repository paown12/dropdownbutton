// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

//we use stateful widget
class DropdownExample extends StatefulWidget {
  const DropdownExample({super.key});

  @override
  State<DropdownExample> createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  //to hold the selected option or value
  String? _selectedValue;

  //list of options for dropdown
  //we are creating dropdown button to select fruit from given list..
  final List<String> _fruits = ['Apple', 'Orange', 'Banana', 'Grapes', 'Mango'];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButton<String>(
          hint: Text('Select Fruit!!'),
          value: _selectedValue,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          onChanged: (String? newValue) {
            setState(() {
              _selectedValue = newValue;
            });
          },
          //changes the color of dropdown list
          dropdownColor: Colors.red[200],
          items: _fruits.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList()),
      //to change the color of the button or selected fruit
      decoration: BoxDecoration(color: Colors.blue[300]),
    );
  }
}
