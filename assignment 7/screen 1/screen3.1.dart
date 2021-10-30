import 'package:flutter/material.dart';

void main() {
  runApp(ass3());
}

class ass3 extends StatefulWidget {
  const ass3({Key? key}) : super(key: key);

  @override
  _ass3State createState() => _ass3State();
}

class _ass3State extends State<ass3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        actions: [
          Icon(
            Icons.bookmark_border,
            color: Colors.black,
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 10)),
            Image(image: AssetImage("assets/book.jpg")),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Container(
                  height: 250,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Text(
                          "DESCRIPTION:",
                          style: TextStyle(
                              fontSize: 30, fontStyle: FontStyle.italic),
                        ),
                        title: Text(
                            "This book is about a Women Who Lives in a forest."),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Buy Now For 800Rs.",
                          ))
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
