import 'package:flutter/material.dart';

class ExpandedFlexibleExample extends StatefulWidget {

  @override
  _ExpandedFlexibleExampleState createState() => _ExpandedFlexibleExampleState();
}

class _ExpandedFlexibleExampleState extends State<ExpandedFlexibleExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded"),
      ),
      body: Column(
        children: [

          // Expanded(
          //   child: Container(
          //     color: Colors.green,
          //   ),
          // ),
          // Container(
          //   height: 80.0,
          //   color: Colors.red,
          // )

          Flexible(
            flex: 1,
            child: Container(
              color: Colors.red,
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 50.0,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
