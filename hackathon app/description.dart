import 'package:flutter/material.dart';

void main() {
  runApp(desc());
}

class desc extends StatefulWidget {
  const desc({Key? key}) : super(key: key);

  @override
  _descState createState() => _descState();
}

class _descState extends State<desc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Description"),
      ),
    );
  }
}
