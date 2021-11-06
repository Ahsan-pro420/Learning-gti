import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_application_4/stack.dart';

void main() {
  runApp(medias());
}

class medias extends StatefulWidget {
  const medias({Key? key}) : super(key: key);

  @override
  _mediasState createState() => _mediasState();
}

class _mediasState extends State<medias> {
  TextEditingController txts = TextEditingController();

  var gettext = "";
  var lst = [];
  var gettext1 = "";
  var lst1 = [];
  txt() {
    setState(() {
      lst.add(gettext);
      lst1.add(gettext1);
    });
  }

  txt1() {
    setState(() {
      lst.remove(gettext);
      lst1.remove(gettext1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: Icon(Icons.logout),
        title: Center(child: Text("Task ToDo")),
        actions: [
          Icon(Icons.device_unknown),
        ],
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "Add Task",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 300,
              child: TextField(
                decoration: InputDecoration(hintText: "add task"),
                onChanged: (value) {
                  gettext = value;
                },
                controller: txts,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              child: Row(
                children: [
                  TextButton(
                      onPressed: () {
                        txt();
                        txts.clear();
                      },
                      child: Icon(
                        Icons.add_circle,
                        color: Colors.blueGrey,
                      )),
                  SizedBox(
                    width: 220,
                  ),
                  TextButton(
                      onPressed: () {
                        txt1();
                        txts.clear();
                      },
                      child: Icon(
                        Icons.remove_circle,
                        color: Colors.blueGrey,
                      ))
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: lst.length,
              itemBuilder: (context, index) {
                return ListTile(
                  tileColor: Colors.grey,
                  leading: Text(lst[index]),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
