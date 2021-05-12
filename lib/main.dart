import 'package:covid19tracker/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Covid19 RealTime Tracker",
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.blueGrey,
      fontFamily: 'lato',
    ),
    home: HomePage(),
  ));
}