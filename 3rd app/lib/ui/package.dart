import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

MyApp() {
  var x = Text(
    "WelCome to Saltysugar",
    textAlign: TextAlign.center,
    style: GoogleFonts.pacifico(),
  );
  var y = Text("We believe you Nourish");
  var s = PreferredSize(child: y, preferredSize: Size(33, 44));
  var app = Scaffold(
    appBar: AppBar(
      title: x,
      bottom: s,
      backgroundColor: Colors.indigoAccent,
      elevation: 80,
      brightness: Brightness.light,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(67))),
    ),
  );
  return MaterialApp(home: app);
}
