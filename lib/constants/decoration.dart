import 'package:flutter/material.dart';

const kInputDecoration = InputDecoration(
  hintText: 'Enter a task...',
  contentPadding:
    EdgeInsets.symmetric(vertical: 0.0, horizontal: 6.0),
  hintStyle: TextStyle(
      color: Colors.blueGrey
  ),
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 3.0),
  ),
);