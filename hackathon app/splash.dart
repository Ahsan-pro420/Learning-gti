import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_5/login.dart';

void main() {
  runApp(splash());
}

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => login())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(image: AssetImage("assets/cart.gif")),
    );
  }
}
