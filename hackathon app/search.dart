import 'package:flutter/material.dart';

void main() {
  runApp(search());
}

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  _searchState createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextField(
        decoration: InputDecoration(
            hintText: "search Your Attire", icon: Icon(Icons.search)),
      ),
    );
  }
}
