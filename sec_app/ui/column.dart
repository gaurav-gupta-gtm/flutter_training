import 'package:flutter/material.dart';

body() {
  var cont = Container(
      margin: EdgeInsets.all(25),
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        color: Colors.lightGreen,
        shape: BoxShape.circle,
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
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('We will fight up close, seize the moment and stay in it'),
          Text('It’s either that or meet the business end of a bayonet'),
          Text('The code word is ‘Rochambeau,’ dig me?'),
        ],
      ));

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
