import 'package:flutter/material.dart';

class ButtonWidgetExample extends StatefulWidget
{
  @override
  _ButtonWidgetExampleState createState() => _ButtonWidgetExampleState();
}

class _ButtonWidgetExampleState extends State<ButtonWidgetExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Example"),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){},
      //   child: Icon(Icons.wifi_calling_outlined),
      //   backgroundColor: Colors.yellow,
      // ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){},
        icon: Icon(Icons.wifi_calling_outlined),
        label: Text("Call"),
      ),
      body: Column(
        children: [
          SizedBox(height: 15.0,),
          FlatButton(
            onPressed: (){
              print("Flat Button Clicked");
            },
            color: Colors.blue,
            splashColor: Colors.red,
            textColor: Colors.white,
            child: Text("Flat Button"),
          ),

          SizedBox(height: 15.0,),
          RaisedButton(
            onPressed: (){
              print("RaisedButton Clicked");
            },
            color: Colors.blue,
            splashColor: Colors.red,
            textColor: Colors.white,
            child: Text("RaisedButton Button"),
          ),

          SizedBox(height: 15.0,),
          InkWell(
            onTap: (){},
            child: Text("Ink Well"),
          ),

          SizedBox(height: 15.0,),
          OutlinedButton(
            onPressed: (){},
            child: Text("Outline Button"),
          ),

          SizedBox(height: 15.0,),
          GestureDetector(
            onTap: (){
              print("Test");
            },
            child: Container(
              width: 200.0,
              height: 100.0,
              color: Colors.red,
              child: Text("Login"),
            ),
          ),

          SizedBox(height: 15.0,),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.add_call),
          )
        ],
      ),
    );
  }
}
