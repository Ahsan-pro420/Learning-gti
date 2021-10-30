import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/screen3.dart';

void main() {
  runApp(ass1());
}

class ass1 extends StatefulWidget {
  ass1({Key? key}) : super(key: key);

  @override
  _ass1State createState() => _ass1State();
}

class _ass1State extends State<ass1> {
  Icon customIcon = const Icon(Icons.search);
  Widget customSearchBar = const Text('Search Your Food');
  final images = [
    "assets/burger.jpg",
    "assets/burger2.jpg",
    "assets/burger1.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: customSearchBar,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  if (customIcon.icon == Icons.search) {
                    customIcon = Icon(Icons.cancel);
                    customSearchBar = ListTile(
                      leading: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 28,
                      ),
                      title: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search For resturant,cuisines and dishes',
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontStyle: FontStyle.italic,
                          ),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    );
                  } else {
                    customIcon = Icon(Icons.search);
                    customSearchBar = Text("Search Your Food");
                  }
                });
              },
              icon: customIcon),
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage("assets/profile.jpg"),
          )
        ],
      ),
      body: Container(
        height: 500,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                itemBuilder: (context, index) => Card(
                  child: Container(
                    height: 250,
                    child: Row(
                      children: [
                        CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage("assets/burger1.jpg")),
                        CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage("assets/burger1.jpg")),
                        CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage("assets/burger1.jpg")),
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage("assets/burger.jpg"),
                        ),
                        CircleAvatar(
                          radius: 100,
                          backgroundImage: AssetImage("assets/burger2.jpg"),
                        ),
                        CircleAvatar(
                            radius: 60,
                            backgroundImage: AssetImage("assets/burger1.jpg")),
                        CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage("assets/burger1.jpg")),
                        CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage("assets/burger1.jpg")),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                children: [
                  Text(
                    "Double Decker Special",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 140,
                  ),
                  Text("Rs599"),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [Text("Burgers Category")],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
                height: 250,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Our Special Burger with olives,mushroom,mustard.",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                )),
            ElevatedButton(
              onPressed: () {},
              child: Icon(
                Icons.shopping_cart,
                color: Colors.pink,
              ),
            ),
            Text("Add To Cart")
          ],
        ),
      ),
    );
  }
}
