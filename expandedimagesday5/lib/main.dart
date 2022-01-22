import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "ExpandedImagesStackPosition",
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ExpandedImagesStackPosition"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image(
                      height: 200,
                      width: 200,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1546587348-d12660c30c50?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bmF0dXJhbHxlbnwwfHwwfHw%3D&w=1000&q=80")),
                ),
                Positioned(
                  bottom: 50,
                  left: 30,
                  child: Text(
                    "Nature",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
              width: 10,
            ),
            Text(
              "Here is after sizebox ",
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                _rowcell(),
                SizedBox(
                  width: 10,
                ),
                _rowcell(),
                SizedBox(
                  width: 10,
                ),
                _rowcell(),
                SizedBox(
                  width: 10,
                ),
                _rowcell(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _rowcell() {
  return Expanded(
      child: Container(
    height: 50,
    width: 50,
    decoration: BoxDecoration(
      color: Colors.greenAccent,
    ),
    child: Icon(
      Icons.link,
      color: Colors.white,
    ),
  ));
}
