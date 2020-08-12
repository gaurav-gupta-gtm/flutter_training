import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(
    MaterialApp(
      home: MyFulApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyFulApp extends StatefulWidget {
  @override
  _MyFulAppState createState() => _MyFulAppState();
}

class _MyFulAppState extends State<MyFulApp> {
  var cmd;
  var output;
  app() async {
    var url = "http://192.168.43.19/cgi-bin/date.py?x=${cmd}";
    var a = await http.get(url);
    setState(() {
      output = a.body;
    });
    print(output);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Print Output"),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width * 0.7,
          color: Colors.amber,
          child: Column(
            children: [
              TextField(
                onChanged: (value) {
                  cmd = value;
                },
              ),
              FlatButton(onPressed: app, child: Text("Click Me")),
              Text(
                output ?? "my output",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  var a = ["gaurav", "anu", "shri"];
  var index = 0;

  lchange() {
    index += 1;
    print(index);
  }

  Widget build(BuildContext c) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Print Output"),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(c).size.height * 0.4,
          width: MediaQuery.of(c).size.width * 0.7,
          color: Colors.amber,
          child: Column(
            children: [
              Text(
                a[index % a.length],
                style: TextStyle(fontSize: 22),
              ),
              FlatButton(onPressed: lchange, child: Text("Click Me"))
            ],
          ),
        ),
      ),
    );
  }
}
