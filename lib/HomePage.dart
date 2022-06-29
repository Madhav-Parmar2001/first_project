
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'LoginPage.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var name="";
  checklogin() async
  {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(prefs.containsKey("islogin"))
    {
      setState(() {
        name=prefs.getString("name");
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checklogin();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Container(
        child: Column(
          children: [
            Text("Welcome,"+name),
            RaisedButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.remove("islogin");

                Navigator.of(context).pop();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>LoginPage())
                );
              },
              child: Text("logout"),
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
