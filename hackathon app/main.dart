import 'package:flutter/material.dart';
import 'package:flutter_application_5/about.dart';
import 'package:flutter_application_5/home.dart';
import 'package:flutter_application_5/login.dart';
import 'package:flutter_application_5/profile.dart';
import 'package:flutter_application_5/search.dart';
import 'package:flutter_application_5/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash(),
    );
  }
}
