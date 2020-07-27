import './home.dart';
import 'package:flutter/material.dart';
import './login.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primaryColor: Colors.red.shade900
    ),
    home: HomePage(),
  ));
}