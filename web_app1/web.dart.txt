import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

String result;

class MyApp extends StatelessWidget {
  web() async {
    var url = 'http://192.168.43.19/cgi-bin/date.py';
    var response = await http.get(url);
    print(result = (response.body));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'My App',
          ),
        ),
        body: Center(
          child: Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.center,
              color: Colors.cyan,
              height: 200,
              width: 299,
              child: Column(
                children: [
                  Text("My Web APP"),
                  Card(
                    color: Colors.blue,
                    child: TextField(),
                  ),
                  FlatButton(
                      onPressed: () {
                        web();
                      },
                      child: Text("Submit"))
                ],
              )),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
