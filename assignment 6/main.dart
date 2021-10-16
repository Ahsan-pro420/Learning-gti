import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/Home.dart';
import 'package:my_app/login.dart';

void main() {
  runApp(const Ahsan());
}

class Ahsan extends StatelessWidget {
  const Ahsan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}
