import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "ListTileDay6",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListTileDay6"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            padding: EdgeInsets.all(20),
            child: ListView(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    child: Text("R"),
                  ),
                  title: Text("Md.Rahul Reza"),
                  subtitle: Text("meetwithrahulreza@gmail.com"),
                  onTap: () {},
                ),
                Divider(),
                ListTile(
                  leading: CircleAvatar(
                    child: Text("R"),
                  ),
                  title: Text("Md.Rahul Reza"),
                  subtitle: Text("meetwithrahulreza@gmail.com"),
                  onTap: () {},
                ),
                Divider(),
                ListTile(
                  leading: CircleAvatar(
                    child: Text("R"),
                  ),
                  title: Text("Md.Rahul Reza"),
                  subtitle: Text("meetwithrahulreza@gmail.com"),
                  onTap: () {},
                ),
                Divider(),
              ],
            ),
          ),
        ],
      ),
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
