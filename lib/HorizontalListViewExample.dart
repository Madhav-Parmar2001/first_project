import 'package:flutter/material.dart';

class HorizontalListViewExample extends StatefulWidget {
  @override
  _HorizontalListViewExampleState createState() => _HorizontalListViewExampleState();
}

class _HorizontalListViewExampleState extends State<HorizontalListViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Horizontal Listview"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: 300.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300.0,
              color: Colors.red,
              margin: EdgeInsets.all(10.0),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300.0,
              color: Colors.blue,
              margin: EdgeInsets.all(10.0),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300.0,
              color: Colors.yellow,
              margin: EdgeInsets.all(10.0),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300.0,
              color: Colors.green,
              margin: EdgeInsets.all(10.0),
            ),
          ],
        ),
      ),
    );
  }
}
