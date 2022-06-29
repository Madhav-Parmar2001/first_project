import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'HomePage.dart';
import 'SignUp.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var Valid = GlobalKey<FormState>(); //All

  TextEditingController _userid = TextEditingController();
  TextEditingController _password = TextEditingController();


  checklogin() async
  {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(prefs.containsKey("islogin"))
      {
        Navigator.of(context).pop();
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context)=>HomePage())
        );
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
        title: Text("Login"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
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
                        child: Text("User ID : "),
                        alignment: AlignmentDirectional.topStart,
                      ),
                      TextFormField(
                        controller: _userid,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          prefix: Icon(Icons.arrow_forward_outlined),
                          border: OutlineInputBorder(),
                        ),
                      ),

                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        child: Text("Password : "),
                        alignment: AlignmentDirectional.topStart,
                      ),
                      TextFormField(
                        controller: _password,
                        keyboardType: TextInputType.visiblePassword,
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
                              onPressed: () async{
                                var userid1 = _userid.text.toString();
                                var password1 = _password.text.toString();
                                
                                if(userid1=="123" && password1=="123")
                                  {

                                    SharedPreferences prefs = await SharedPreferences.getInstance();
                                    prefs.setString("islogin", "yes");
                                    prefs.setString("name", "Mr Mahesh");

                                    Navigator.of(context).pop();
                                    Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context)=>HomePage())
                                    );
                                  }
                                else
                                  {
                                    print("Login Fail!");
                                  }
                                
                              },
                              child: Text("Login"),
                              color: Colors.orange,
                            ),

                            SizedBox(
                              width: 10.0,
                            ),
                            RaisedButton(
                              onPressed: (){
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context)=>SignUp(),)
                                );
                              },

                              child: Text("Sign Up"),
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
      ),
    );
  }
}
