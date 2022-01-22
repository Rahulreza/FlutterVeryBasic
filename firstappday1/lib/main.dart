import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: 'My App', home: Homepage()));
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First App"),
      ),
      body: Center(
        child: Text("This is First App"),
      ),
    );
  }
}
