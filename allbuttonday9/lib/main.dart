import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'All Button',
      home: HomePage()));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _const = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Button"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Value: $_const",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
          Divider(
            height: 10,
          ),
          RaisedButton(
            child: Text("RasiedButton"),
            onPressed: () {
              setState(() {
                _const++;
              });
            },
          ),
          Divider(
            height: 10,
          ),
          FlatButton(
            child: Text("FlatButton"),
            onPressed: () {
              setState(() {
                _const++;
              });
            },
          ),
          Divider(
            height: 10,
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _const++;
              });
            },
            icon: Icon(Icons.plus_one),
          ),
          Divider(
            height: 10,
          ),
          FloatingActionButton(
            child: Icon(Icons.accessibility),
            onPressed: () {
              setState(() {
                _const--;
              });
            },
          ),
        ],
      ),
    );
  }
}
