import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

void main() {
  runApp(MaterialApp(
    title: "Json Data From Local",
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List data;

  Future<String> loadJsonData() async {
    var jsonText = await rootBundle.loadString("assets/data.json");
    setState(() {
      data = json.decode(jsonText);
    });

    print(jsonText);

    return "sucess";
  }

  @override
  void initState() {
    // TODO: implement initState
    this.loadJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Json From Local"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    child: Text(data[index]["name"][0]),
                  ),
                  title: Text(data[index]["name"]),
                  subtitle: Text(data[index]["email"]),
                ),
              ],
            );
          }),
    );
  }
}
