import 'package:flutter/material.dart';

void main() {
  runApp(cart());
}

class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  _cartState createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            children: [
              Text("MyCart"),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.shopping_cart,
                color: Colors.grey,
              )
            ],
          )),
    );
  }
}
