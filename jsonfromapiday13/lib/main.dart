import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:jsonfromapiday13/pages/pageone.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List Posts;

  get http => null;
  Future<bool> _getPost() async {
    String serviceUrl = "https://jsonplaceholder.typicode.com/posts";
    var response = await http.get(serviceUrl);
    setState(() {
      Posts = json.decode(response.body.toString());

      print(Posts);
    });

    return true;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._getPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: Posts.length == null ? 0 : Posts.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    child: Text(Posts[index]["title"][0]),
                  ),
                  title: Text(Posts[index]["title"]),
                  subtitle: Text(Posts[index]["body"]),
                  onTap: () {
                    print(Posts[index]);

                    Route route = MaterialPageRoute(
                        builder: (context) => PageOne(Posts[index]));
                    Navigator.push(context, route);
                  },
                ),
              ],
            );
          }),
      // body: Padding(
      //   padding: const EdgeInsets.all(20.0),
      //   child: Center(
      //     child: Column(
      //       children: [
      //         Text("Dash Board:"),
      //         RaisedButton(
      //             child: Text(" Go to another page:"),
      //             onPressed: () {
      //               var message = "Rahul";
      //               Route route = MaterialPageRoute(
      //                   builder: (context) => PageOne(message));
      //               Navigator.push(context, route);
      //             }),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
