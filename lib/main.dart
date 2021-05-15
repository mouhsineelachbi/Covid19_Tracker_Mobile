import 'package:covid19tracker/pages/home.dart';
import 'package:covid19tracker/themes/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Covid19 RealTime Tracker",
    theme: ThemeData(
      scaffoldBackgroundColor: bgColor,
      fontFamily: 'lato',
    ),
    home: HomePage(),
  ));
}