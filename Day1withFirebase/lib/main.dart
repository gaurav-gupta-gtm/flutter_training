import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(
    MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatelessWidget {
  var mydata;
  @override
  Widget build(BuildContext context) {
    var data = FirebaseFirestore.instance;
    return Scaffold(
      appBar: AppBar(
        title: Text("Terminal_APP"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) {
                mydata = value;
              },
            ),
            RaisedButton(
              child: Text("Store Data"),
              onPressed: () async {
                // fire();
                await data.collection("CMD-Output").add({'email': mydata});
              },
            ),
            RaisedButton(
              child: Text("Get Data"),
              onPressed: () async {
                var a = await data.collection("CMD-Output").get();
                for (var i in a.docs) {
                  print(i.data());
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
