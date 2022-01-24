import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "SnackBarToast",
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  final GlobalKey<ScaffoldState> _scafoldkey = GlobalObjectKey(ScaffoldState);

  _showSnackBar() {
    var _mySnckBar = SnackBar(content: Text("I am snackbar"));

    // ignore: deprecated_member_use
    _scafoldkey.currentState?.showSnackBar(_mySnckBar);
  }

  _showToast() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scafoldkey,
      appBar: AppBar(
        title: Text("SnackBar Toast"),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
            child: Text("Raised Button"), onPressed: _showSnackBar),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.ac_unit),
        onPressed: _showToast,
      ),
    );
  }
}
