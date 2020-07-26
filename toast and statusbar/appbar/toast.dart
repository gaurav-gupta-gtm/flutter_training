import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

toa(text, colour) {
  var clo = Icon(Icons.check);

  toast1() {
    Fluttertoast.showToast(
        msg: "This is Long Toast",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  var c = Container(
    alignment: Alignment.centerLeft,
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(icon: clo, onPressed: toast1),
        SizedBox(
          width: 12.0,
        ),
        Text(text),
      ],
    ),
    height: 50,
    width: 300,
    color: colour,
  );
  return c;
}

toat(text, colour) {
  var clo = Icon(Icons.check);

  toast() {
    Fluttertoast.showToast(
        msg: "This is Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  var c = Container(
    alignment: Alignment.centerLeft,
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(icon: clo, onPressed: toast),
        SizedBox(
          width: 12.0,
        ),
        Text(text),
      ],
    ),
    height: 50,
    width: 300,
    color: colour,
  );
  return c;
}
