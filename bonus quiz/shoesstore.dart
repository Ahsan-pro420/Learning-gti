import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(Shoes());
}

class Shoes extends StatefulWidget {
  const Shoes({Key? key}) : super(key: key);

  @override
  _ShoesState createState() => _ShoesState();
}

var data = [
  "Men's Runner",
  "Men's Fit",
  "Men's Fashion",
  "Men's Fashion",
  "Men's Fashion",
  "Men's Fashion",
  "Men's Fashion"
];
var pic = [
  "assets/shoes.jpg",
  "assets/shoes1.jpg",
  "assets/shoes2.jpg",
  "assets/shoes1.jpg",
  "assets/shoes1.jpg",
  "assets/shoes1.jpg",
  "assets/shoes1.jpg"
];
var rate = [
  "Rs 9999",
  "Rs 15999",
  "Rs 5999",
  "Rs 5999",
  "Rs 5999",
  "Rs 5999",
  "Rs 5999"
];
var data2 = [
  "UltraBoost",
  "AirMax",
  "AirForce",
  "AirForce",
  "AirForce",
  "AirForce",
  "AirForce"
];

class _ShoesState extends State<Shoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: CircleAvatar(
            radius: 25, backgroundImage: AssetImage("assets/logo.jpg")),
        title: Text(
          "SPORTS",
        ),
        actions: [
          Icon(Icons.search),
        ],
      ),
      body: Column(
        children: [
          top("RUNNING"),
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return abc(pic[index], data[index], data2[index], rate[index]);
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: "home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart, color: Colors.black),
            label: "Add To Cart"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.category,
              color: Colors.black,
            ),
            label: "Category"),
        BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/profile.jpg"),
              height: 40,
              width: 30,
            ),
            label: "Profile"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.more_horiz_outlined,
              color: Colors.black,
            ),
            label: "More"),
      ]),
    );
  }
}

Widget top(type) {
  return (Container(
      height: 50,
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Text(type,
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
          SizedBox(
            width: 80,
          ),
          Text("3 Results",
              style: TextStyle(
                fontSize: 25,
                color: Colors.grey,
              ))
        ],
      )));
}

Widget abc(var img, var shoename, var shoename1, var price) {
  return (Card(
    child: Row(
      children: [
        Image(
          image: AssetImage(img),
          height: 130,
          width: 130,
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          padding: EdgeInsets.only(left: 10),
          child: Column(
            children: [
              Text(
                shoename,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                shoename1,
                style: TextStyle(fontSize: 25),
              ),
              Text(
                price,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )
      ],
    ),
  ));
}
