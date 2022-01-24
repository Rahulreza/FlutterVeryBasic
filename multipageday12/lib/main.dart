import 'package:flutter/material.dart';
import 'package:multipageday12/pages/page1.dart';

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
  List people = [
    {"name": "Rahul", "email": "meetwithrahulreza@gmail.com"},
    {"name": "Reza", "email": "meetwithrahulreza@gmail.com"},
    {"name": "Raz", "email": "meetwithrahulreza@gmail.com"},
    {"name": "Forhad", "email": "meetwithrahulreza@gmail.com"},
    {"name": "Foysal", "email": "meetwithrahulreza@gmail.com"},
    {"name": "Fahad", "email": "meetwithrahulreza@gmail.com"},
    {"name": "Fazle", "email": "meetwithrahulreza@gmail.com"},
    {"name": "Rabbi", "email": "meetwithrahulreza@gmail.com"},
    {"name": "Nahid", "email": "meetwithrahulreza@gmail.com"},
    {"name": "Nadim", "email": "meetwithrahulreza@gmail.com"},
    {"name": "Iqbal", "email": "meetwithrahulreza@gmail.com"},
    {"name": "Muntasir", "email": "meetwithrahulreza@gmail.com"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: people.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    child: Text(people[index]["name"][0]),
                  ),
                  title: Text(people[index]["name"]),
                  subtitle: Text(people[index]["email"]),
                  onTap: () {
                    print(people[index]);

                    Route route = MaterialPageRoute(
                        builder: (context) => PageOne(people[index]));
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
