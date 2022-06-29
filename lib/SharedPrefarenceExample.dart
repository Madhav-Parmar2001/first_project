import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferanceExample extends StatefulWidget {
  @override
  _SharedPreferanceExampleState createState() => _SharedPreferanceExampleState();
}

class _SharedPreferanceExampleState extends State<SharedPreferanceExample> {
  var Valid = GlobalKey<FormState>(); //All

  TextEditingController _name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preference"),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey,
          margin: EdgeInsets.only(
            left: 10.0,
            right: 10.0,
            top: 10.0,
            bottom: 10.0,
          ),
          padding: EdgeInsets.only(
            left: 10.0,
            right: 10.0,
            top: 10.0,
            bottom: 10.0,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 10.0,
              ),
              Form(
                key: Valid,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      child: Text("Enter Name"),
                      alignment: AlignmentDirectional.topStart,
                    ),
                    TextFormField(
                      controller: _name,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefix: Icon(Icons.arrow_forward_outlined),
                        border: OutlineInputBorder(),
                      ),
                    ),

                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          RaisedButton(
                            onPressed: () async {
                              var name = _name.text.toString();
                              SharedPreferences prefs = await SharedPreferences.getInstance();
                              prefs.setString("myname", name);
                              print("Value Stored In Shared Preference");
                              _name.text="";
                            },
                            child: Text("Add"),
                            color: Colors.orange,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          RaisedButton(
                            onPressed: () async {
                              //read/check
                              SharedPreferences prefs  = await SharedPreferences.getInstance();
                              //check
                              if(prefs.containsKey("myname"))
                                {
                                  //read
                                  var nm = prefs.getString("myname");
                                  print("Value is : "+nm);
                                }
                              else
                                {
                                  print("Shared Prefs Not Available!");
                                }
                            },
                            child: Text("Check"),
                            color: Colors.orange,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          RaisedButton(
                            onPressed: () async {
                              SharedPreferences prefs  = await SharedPreferences.getInstance();
                              if(prefs.containsKey("myname"))
                              {
                                //prefs.clear(); // All Clear
                                prefs.remove("myname");// particular key remove
                                print("Shared Prefs Deleted");
                              }
                              else
                              {
                                print("Shared Prefs Not Available!");
                              }
                            },
                            child: Text("Remove"),
                            color: Colors.orange,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
