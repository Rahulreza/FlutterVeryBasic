import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var formKey = GlobalKey<FormState>();
  var name, phone, address;
  var nameCtrl = TextEditingController();
  var phoneCtrl = TextEditingController();
  var addressCtrl = TextEditingController();
  void handleSubmit() {
    if (formKey.currentState!.validate()) {
      formKey.currentState?.save();
    }
  }

  void handleReset() {
    nameCtrl.clear();
    phoneCtrl.clear();
    addressCtrl.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Validation"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: nameCtrl,
                    decoration: InputDecoration(
                      labelText: "Enter Name",
                    ),
                    validator: (value) {
                      if (value?.length == 0) return ("Name is required");
                    },
                    onSaved: (value) {
                      this.name = value;
                    },
                  ),
                  TextFormField(
                    controller: phoneCtrl,
                    keyboardType: TextInputType.number,
                    maxLength: 11,
                    decoration: InputDecoration(
                      labelText: "Enter Phone Number",
                    ),
                    validator: (value) {
                      if (value!.length < 11)
                        return ("Phone number mst be 11 digit");
                    },
                    onSaved: (value) {
                      this.phone = value;
                    },
                  ),
                  TextFormField(
                    controller: addressCtrl,
                    decoration: InputDecoration(
                      labelText: "Enter Address",
                    ),
                    validator: (value) {
                      if (value?.length == 0) return ("Address is required");
                    },
                    onSaved: (value) {
                      this.address = value;
                    },
                  ),
                  Row(
                    children: [
                      RaisedButton(
                        child: Text("Submit"),
                        onPressed: handleSubmit,
                      ),
                      RaisedButton(
                        color: Colors.amber,
                        child: Text("Reset"),
                        onPressed: handleReset,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
