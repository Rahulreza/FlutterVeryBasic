import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "ImageListView",
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
                child: Icon(Icons.ad_units),
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.all(10.0),
                height: 60.0,
                width: 80.0,
                decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.circular(12.0)),
              ),
              Container(
                child: Image(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1546587348-d12660c30c50?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bmF0dXJhbHxlbnwwfHwwfHw%3D&w=1000&q=80"),
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
                child: Icon(Icons.mail),
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
