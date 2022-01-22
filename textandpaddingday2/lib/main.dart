import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "TextAndPaddingDay2",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextAndPaddingDay2"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Text(
            "This is text style app ",
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: Colors.black38,
              fontSize: 12,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
    );
  }
}
