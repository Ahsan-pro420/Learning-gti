import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text("LOGIN FORM")),
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage(
              "https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FZayn_Malik&psig=AOvVaw3mLWxqahtkpo0oLkcmEeVU&ust=1634450320104000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCOC2nY2gzvMCFQAAAAAdAAAAABAD"),
        ),
        actions: [Icon(Icons.help_center_outlined)],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Container(
              width: 250,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Username",
                    fillColor: Colors.lightBlue,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 250,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Password",
                    fillColor: Colors.lightBlue,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => home()),
                  );
                },
                child: Text('Login')),
            SizedBox(
              height: 15,
            ),
            Text("Login or Signup to Register.")
          ],
        ),
      ),
    );
  }
}
