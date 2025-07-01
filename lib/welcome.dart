import 'package:flutter/material.dart';
import 'package:login/login.dart';
import 'package:login/sign%20up.dart';

class welcome extends StatelessWidget {
  const welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
        child: Column(
        children: [
        SizedBox(height: 50),
    Text(
    "welcome",
    style: TextStyle(fontSize: 70, color: Colors.black),
    ),
    SizedBox(height: 50),
    Center(
    child: CircleAvatar(
    radius: 150,
    backgroundImage: NetworkImage(
    "https://image.winudf.com/v2/image1/Y29tLmFwcC50ZXN0cGl3aWtiYXNpY19zY3JlZW5fMF8xNTk3ODU2MzY1XzAwNg/screen-0.jpg?fakeurl=1&type=.jpg",
    ),
    ),
    ),
    SizedBox(height: 50),
    SizedBox(
    height: 50,
    width: 500,
    child: ElevatedButton(onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => login(),));}, child: Text("login"),style: ElevatedButton.styleFrom(side: BorderSide(color:Colors.black)),
    ),
    ),
    SizedBox(height: 50),
    SizedBox(
    height: 50,
    width: 500,
    child: ElevatedButton(
    onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => signup(),));},
    child: Text("sign up"),
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.blue,
    foregroundColor: Colors.white,
    ),
    ),
    ),
    ],
    ),
    ),
    );
  }
}
