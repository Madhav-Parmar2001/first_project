import 'package:flutter/material.dart';

class GridViewWidgetExample extends StatefulWidget
{
  @override
  _GridViewWidgetExampleState createState() => _GridViewWidgetExampleState();
}

class _GridViewWidgetExampleState extends State<GridViewWidgetExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),

      ),

      //Static
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 10.0,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 300.0,
            color: Colors.red,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 300.0,
            color: Colors.red,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 300.0,
            color: Colors.red,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 300.0,
            color: Colors.red,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 300.0,
            color: Colors.red,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 300.0,
            color: Colors.red,
          ),
        ],
      ),


      //Dynamic
      // body: GridView(
      //   gridDelegate:
      //   const SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //     crossAxisSpacing: 5.0,
      //     mainAxisSpacing: 10.0,
      //   ),
      //   children: [
      //     Container(
      //       width: MediaQuery.of(context).size.width,
      //       height: 300.0,
      //       color: Colors.red,
      //     ),
      //     Container(
      //       width: MediaQuery.of(context).size.width,
      //       height: 300.0,
      //       color: Colors.red,
      //     ),
      //     Container(
      //       width: MediaQuery.of(context).size.width,
      //       height: 300.0,
      //       color: Colors.red,
      //     ),
      //     Container(
      //       width: MediaQuery.of(context).size.width,
      //       height: 300.0,
      //       color: Colors.red,
      //     ),
      //     Container(
      //       width: MediaQuery.of(context).size.width,
      //       height: 300.0,
      //       color: Colors.red,
      //     ),
      //     Container(
      //       width: MediaQuery.of(context).size.width,
      //       height: 300.0,
      //       color: Colors.red,
      //     ),
      //   ],
      // ),
    );
  }
}
