import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

import 'toast.dart';

MyApp() {
  var x = Text("My App");

  var clo = Icon(Icons.add);
  var cloc = Icon(Icons.mail);
  var clok = Icon(Icons.accessibility_new);

  lw() {
    print("my class");
  }

  var clockicon = IconButton(icon: clo, onPressed: lw);
  var clokicon = IconButton(icon: cloc, onPressed: lw);
  var clckicon = IconButton(icon: clok, onPressed: lw);
  FlutterStatusbarcolor.setStatusBarColor(Colors.red.shade300);

  var app = Scaffold(
    appBar: AppBar(
      title: x,
      leading: clckicon,
      actions: <Widget>[clockicon, clokicon],
      backgroundColor: Colors.amberAccent,
      brightness: Brightness.light,
    ),
    body: Column(
      children: <Widget>[
        Center(child: toa("Show Long Toast", Colors.red)),
        Center(child: toat("Show Short Toast", Colors.cyan)),
      ],
    ),
  );
  return MaterialApp(
    home: app,
  );
}
