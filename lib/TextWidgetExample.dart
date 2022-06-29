
import 'package:flutter/material.dart';

class TextWidgetExample extends StatefulWidget {

  @override
  _TextWidgetExampleState createState() => _TextWidgetExampleState();
}

class _TextWidgetExampleState extends State<TextWidgetExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Widget Example"),
        leading: IconButton(icon: Icon(Icons.back_hand_outlined),onPressed: (){Navigator.of(context).pop();},),
      ),
      body: Center(
        child: Text("Hello World!",style: TextStyle(
          fontSize: 30.0,
          color: Colors.blue,
          fontWeight: FontWeight.w900,
          letterSpacing: 5.0,
          wordSpacing: 20.0,
          backgroundColor: Colors.yellow.shade200,
          fontStyle: FontStyle.italic,
        ),),
      ),
    );
  }
}
