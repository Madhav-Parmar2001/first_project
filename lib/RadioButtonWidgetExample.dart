import 'package:flutter/material.dart';

class RadiobuttonWidgetExample extends StatefulWidget
{
  @override
  _RadiobuttonWidgetExampleState createState() => _RadiobuttonWidgetExampleState();
}

class _RadiobuttonWidgetExampleState extends State<RadiobuttonWidgetExample> {

  var gender="male";

  _checkradio(v)
  {
    setState(() {
      gender=v;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RadiobuttonWidgetExample"),
      ),
      body: Column(
        children: [
          Radio(
            value: "male",
            activeColor: Colors.red,
            groupValue: gender,
            onChanged:_checkradio,
          ),
          Radio(
            activeColor: Colors.red,
            value: "female",
            groupValue: gender,
            onChanged:_checkradio,
          ),
          RaisedButton(
            onPressed: (){
              print("Gender : "+gender);
            },
            child: Text("Submit"),
          )
        ],
      ),
    );
  }
}
