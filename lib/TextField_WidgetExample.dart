import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidgetExample extends StatefulWidget
{
  @override
  _TextFieldWidgetExampleState createState() => _TextFieldWidgetExampleState();
}

class _TextFieldWidgetExampleState extends State<TextFieldWidgetExample> {


  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field Widget"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.0,),
            Text("Name"),
            TextField(
              controller: name,
              keyboardType: TextInputType.text,
            ),

            SizedBox(height: 10.0,),
            Text("Mobile Number"),
            TextField(
              controller: phone,
              keyboardType: TextInputType.phone,
            ),

            SizedBox(height: 10.0,),
            Text("Age"),
            TextField(
              keyboardType: TextInputType.number,
            ),

            SizedBox(height: 10.0,),
            Text("Email"),
            TextField(
              keyboardType: TextInputType.emailAddress,
            ),

            SizedBox(height: 10.0,),
            Text("Password"),
            TextField(
              keyboardType: TextInputType.text,
              obscureText: true,
            ),

            SizedBox(height: 10.0,),
            GestureDetector(
              onTap: (){
                var nm = name.text.toString();
                var mobile = phone.text.toString();
                print("Name : "+nm);
                print("Phone Number : "+mobile);
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50.0,
                color: Colors.red,
                alignment: Alignment.center,
                child: Text("Register",style: TextStyle(color: Colors.white)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
