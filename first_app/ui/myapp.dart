import 'package:flutter/material.dart';

app() {
  var x = Text(
    "My First App",
    textDirection: TextDirection.ltr,
  );

  myicon() {
    print("Icon Pressed...");
  }

  var image = Image.network(
    'https://github.com/gaurav-gupta-gtm/flutter_training/blob/master/first_app/IMG_20200123_192253.jpg?raw=true',
    width: double.infinity,
    height: double.infinity,
  );

  var scanicon = Icon(Icons.scanner);
  var audio = Icon(Icons.audiotrack);
  var dash = Icon(Icons.dashboard);

  var MyIcon = IconButton(
    icon: dash,
    color: Colors.red.shade300,
    onPressed: myicon,
  );

  var MyMusicIcon = IconButton(
    icon: audio,
    color: Colors.yellow,
    onPressed: myicon,
  );

  var MyScanIcon = IconButton(
    icon: scanicon,
    color: Colors.yellow,
    onPressed: myicon,
  );

  var myappbar = AppBar(
    title: x,
    leading: MyIcon,
    actions: <Widget>[MyMusicIcon, MyScanIcon],
  );

  var app = Scaffold(
    appBar: myappbar,
    body: image,
  );

  var design = MaterialApp(
    home: app,
    debugShowCheckedModeBanner: false,
  );

  return design;
}
