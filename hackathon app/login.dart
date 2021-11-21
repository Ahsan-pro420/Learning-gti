import 'package:flutter/material.dart';
import 'package:flutter_application_5/home.dart';

void main() {
  runApp(login());
}

var functionality = "";
TextEditingController txts = TextEditingController();
TextEditingController txts1 = TextEditingController();

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
//  num pass = 12356;
  final _formKey = GlobalKey<FormState>();
  //final _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("LOGIN"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Image(image: AssetImage("assets/cart.gif")),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 50,
                        width: 250,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Username",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        width: 250,
                        child: TextFormField(
                          controller: txts1,
                          //key: _form,
                          onChanged: (value) {
                            functionality = value;
                          },
                          decoration: InputDecoration(
                            hintText: "Password",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (txts1.text == '123456') {
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (_) => home()));
                              }
                            });
                          },
                          child: Text('Login')),
                      //Text("Not have any account?Register")
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
