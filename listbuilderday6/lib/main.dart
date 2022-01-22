import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "ListBuilderDay6",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
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
        title: Text("ListBuilderDay6"),
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
                ),
              ],
            );
          }),
    );
  }
}

// Widget _cell() {
//   return Row(
//     children: [
//       Container(
//         height: 100,
//         width: 100,
//         decoration: BoxDecoration(color: Colors.teal),
//         child: Icon(
//           Icons.light_mode_outlined,
//           color: Colors.white,
//         ),
//       ),
//       SizedBox(width: 10),
//     ],
//   );
// }
