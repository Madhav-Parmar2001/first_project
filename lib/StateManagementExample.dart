import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StateManagementExample extends StatefulWidget {
  @override
  _StateManagementExampleState createState() => _StateManagementExampleState();
}

class _StateManagementExampleState extends State<StateManagementExample> {
  TextEditingController name = TextEditingController();

  _setValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print(prefs.getString("id"));
    // setState(() {
    //   name.text = prefs.getString("id");
    // });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _setValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State management"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: name,
              decoration: InputDecoration(
                hintText: "Enter Name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Row(
                children: [
                  RaisedButton(
                    onPressed: () async {
                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      prefs.setString("id", name.text);
                      print(prefs.getString("id"));
                    },
                    child: Text("Submit"),
                    color: Colors.orange,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
