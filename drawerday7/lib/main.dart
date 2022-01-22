import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Drawer",
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Stack(
              children: [
                Image.asset("images/free.png"),
                Positioned(
                  left: 30,
                  bottom: 50,
                  child: Container(
                    child: Icon(
                      Icons.people,
                      color: Colors.black,
                    ),
                  ),
                ),
                Positioned(
                  left: 30,
                  bottom: 20,
                  child: Text(
                    "Hi, Rahul",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text("Contact With Us"),
              subtitle: Text("meetwithrahulreza@gmail.com"),
              onTap: () {},
            ),
            Divider(
              height: 10,
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Call Us"),
              subtitle: Text("+880 00000000"),
              onTap: () {},
            ),
            Divider(
              height: 10,
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
              subtitle: Text("Configure "),
              onTap: () {},
            ),
            Divider(
              height: 10,
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text("Share"),
              subtitle: Text("Share With Your Friend"),
              onTap: () {},
            ),
            Divider(
              height: 10,
            ),
          ],
        ),
      ),
      body: Center(
        child: Text("To see the drawer click left of AppBar"),
      ),
    );
  }
}
