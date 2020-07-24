import 'package:flutter/material.dart';

body() {
  var cont = Container(
    height: 200,
    width: 200,
    alignment: Alignment.bottomCenter,
    decoration: BoxDecoration(
      color: Colors.lightGreen,
      image: DecorationImage(
        image: NetworkImage(
            'https://raw.githubusercontent.com/gaurav-gupta-gtm/flutter_training/master/first_app/IMG_20200123_192253.jpg'),
        fit: BoxFit.cover,
      ),
      border: Border.all(
        width: 5,
        color: Colors.yellow,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Text(
      "Gaurav Gupta",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.deepPurple,
      ),
    ),
  );
  var a = Text("My Second App");

  var myappbar = AppBar(
    title: a,
  );
  var app = Scaffold(
    appBar: myappbar,
    body: Center(child: cont),
  );

  return MaterialApp(home: app);
}
