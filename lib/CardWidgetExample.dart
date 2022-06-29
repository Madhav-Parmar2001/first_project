import 'package:flutter/material.dart';

class CardWidgetExample extends StatefulWidget
{
  @override
  CardWidgetExampleState createState() => CardWidgetExampleState();
}

class CardWidgetExampleState extends State<CardWidgetExample>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CardWidgetExample"),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 200,
          child: Card(
            color: Colors.grey,
            child: Text("Hello"),
            elevation: 20.0,
          ),
        ),
      ),
    );
  }
}
