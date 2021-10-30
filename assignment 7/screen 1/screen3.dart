import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(ass2());
}

class ass2 extends StatefulWidget {
  const ass2({Key? key}) : super(key: key);

  @override
  _ass2State createState() => _ass2State();
}

List images = [
  "assets/book.jpg",
  "assets/book.jpg",
  "assets/book.jpg",
  "assets/book.jpg",
  "assets/book.jpg"
];
List data = [
  "the Witch and Rayen",
  "the Witch and Rayen",
  "the Witch and Rayen",
  "the Witch and Rayen",
  "the Witch and Rayen"
];

class _ass2State extends State<ass2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Icon(Icons.search),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 150,
              child: Image(image: AssetImage("assets/burger.jpg")),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text("Home"),
              tileColor: Colors.pink,
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              title: Text("contact Us"),
              tileColor: Colors.pink,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
            Container(
              height: 50,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "POPULAR NOW",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              height: 250,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (BuildContext context, int index) => Card(
                        child: Container(
                          height: 250,
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage("assets/book.jpg"),
                                height: 200,
                                width: 200,
                              ),
                              Text("The White Rayen"),
                              Text("By D.miller")
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Text("BESTSELLERS",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic))
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 250,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (BuildContext context, int index) => Card(
                        child: Container(
                          height: 250,
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage("assets/book.jpg"),
                                height: 200,
                                width: 200,
                              ),
                              Text("The White Rayen"),
                              Text("By D.miller")
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Text("BESTSELLERS",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic))
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 250,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (BuildContext context, int index) => Card(
                        child: Container(
                          height: 250,
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage("assets/book.jpg"),
                                height: 200,
                                width: 200,
                              ),
                              Text("The White Rayen"),
                              Text("By D.miller")
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ])),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.bookmark, color: Colors.black), label: "BookMark"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
            label: "cart"),
      ]),
    );
  }
}
