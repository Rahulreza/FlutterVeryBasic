import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "ContainerRowColumDay3",
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ContainerRowColumn"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                child: Text(
                  "One",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.all(10.0),
                height: 60.0,
                width: 80.0,
                decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.circular(12.0)),
              ),
              Container(
                child: Text(
                  "Two",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.all(10.0),
                height: 60.0,
                width: 80.0,
                decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.circular(12.0)),
              ),
              Container(
                child: Text(
                  "Three",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.all(10.0),
                height: 60.0,
                width: 80.0,
                decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.circular(12.0)),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: Text(
                  "Four",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.all(10.0),
                height: 60.0,
                width: 80.0,
                decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.circular(12.0)),
              ),
              Container(
                child: Text(
                  "Five",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.all(10.0),
                height: 60.0,
                width: 80.0,
                decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.circular(12.0)),
              ),
              Container(
                child: Text(
                  "Six",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.all(10.0),
                height: 60.0,
                width: 80.0,
                decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.circular(12.0)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
