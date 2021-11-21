import 'package:flutter/material.dart';
import 'package:flutter_application_5/about.dart';
import 'package:flutter_application_5/cart.dart';
import 'package:flutter_application_5/favourite.dart';
import 'package:flutter_application_5/profile.dart';
import 'package:flutter_application_5/search.dart';
import 'about.dart';

void main() {
  runApp(home());
}

List options = ["Home", "Cart", "Favourites", "About Us"];
List pic = [
  "assets/hoodie.jpg",
  "assets/shoes.jpg",
  "assets/suit.jpg",
  "assets/jeans.jpg"
];
List namee = ["hoodie", "Shoes", "Suit", "Jeans"];
List quantity = [
  "New Arrival",
  "10 pieces left",
  "4 pieces left",
  "20 pieces left"
];
List pic1 = [
  "assets/shirt.jpg",
  "assets/jeans1.jpg",
  "assets/suit.jpg",
  "assets/hoodie.jpg"
];
List namee1 = ["Black T-shirt", "Blue Jeans", "Suits", "Hoodie"];
List price = ["500Rs", "1000Rs", "9999Rs", "1200Rs"];

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  // carting() {
  //   setState(() {
  //     lst.add(pic1);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text("Home Page")),
        actions: [
          GestureDetector(
            child: Icon(Icons.favorite),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => fav()));
            },
          ),
          SizedBox(
            width: 5,
          ),
          GestureDetector(
            child: Icon(Icons.shopping_cart),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => cart()));
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                child: Column(children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.black,
              ),
              SizedBox(
                height: 5,
              ),
              Text("M.AhsanJunaid")
            ])),
            ListTile(
              tileColor: Colors.black,
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => home()));
              },
            ),
            ListTile(
              tileColor: Colors.black,
              title: Text(
                "Cart",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => cart()));
              },
            ),
            ListTile(
              tileColor: Colors.black,
              title: Text(
                "Favourites",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => fav()));
              },
            ),
            ListTile(
              tileColor: Colors.black,
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => profile()));
              },
            ),
            ListTile(
              tileColor: Colors.black,
              title: Text(
                "AboutUs",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => about()));
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 120,
              child: Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: pic.length,
                  itemBuilder: (context, index) {
                    return efg(pic[index], namee[index], quantity[index]);
                  },
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: pic1.length,
              itemBuilder: (context, index) {
                return hij(pic1[index], namee1[index], price[index]);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => home()));
                },
                icon: Icon(Icons.home)),
            label: "Home"),
        BottomNavigationBarItem(
          icon: IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => search()));
              },
              icon: Icon(Icons.search)),
          label: "search",
        ),
        BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => profile()));
                },
                icon: Icon(Icons.person)),
            label: "Profile")
      ]),
    );
  }
}

// Widget abc(var data, BuildContext context) {
//   return (ListTile(
//     tileColor: Colors.black,
//     title: Text(
//       data,
//       style: TextStyle(color: Colors.white),
//     ),
//     onTap: () {
//       Navigator.of(context).push(MaterialPageRoute(builder: (_) => about()));
//     },
//   ));
// }

Widget efg(var image, var data, var quan) {
  return (Column(
    children: [
      Row(
        children: [
          Container(
            child: Card(
              child: Row(
                children: [
                  Image(
                    image: AssetImage(image),
                    height: 100,
                  ),
                  Column(
                    children: [
                      Text(data,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      Text(
                        quan,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    ],
  ));
}

Widget hij(var image1, var namme, var rs) {
  return (Stack(
    clipBehavior: Clip.none,
    children: [
      Container(
          height: 190,
          width: 300,
          //color: Colors.red,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              image: DecorationImage(image: AssetImage(image1))),
          child: Row(
            children: [
              Text(
                namme,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 200,
              ),
              Text(rs),
            ],
          )),
      Positioned(
        top: 5,
        right: 0,
        child: Container(
          child: Center(
              child: Text(
            "30%off",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
          height: 25,
          width: 69,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.orange),
        ),
      ),
      Positioned(
        top: 5,
        left: 0,
        child: Container(
          child: Center(
              child: IconButton(
                  onPressed: () {
                    //   Navigator.of(context).push(
                    //                 MaterialPageRoute(builder: (_) => ));
                  },
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ))),
          height: 25,
          width: 69,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
        ),
      ),
      Positioned(
        bottom: 5,
        right: 0,
        child: Container(
          child: Center(
              child: IconButton(
                  onPressed: () {
                    
                  },
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                  ))),
          height: 25,
          width: 69,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
        ),
      ),
    ],
  ));
}
