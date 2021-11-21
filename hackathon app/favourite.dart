import 'package:flutter/material.dart';

void main() {
  runApp(fav());
}

class fav extends StatefulWidget {
  const fav({Key? key}) : super(key: key);

  @override
  _favState createState() => _favState();
}

class _favState extends State<fav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Text("Favourite"),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.favorite,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
