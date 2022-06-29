import 'package:flutter/material.dart';

class StackExample extends StatefulWidget {

  @override
  _StackExampleState createState() => _StackExampleState();
}

class _StackExampleState extends State<StackExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Example"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.call,color: Colors.white,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined))
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: 300.0,
            height: MediaQuery.of(context).size.height,
            color: Colors.red,
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              width: 50,
              height: 50,
              color: Colors.green,
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Container(
              width: 50,
              height: 50,
              color: Colors.green,
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Container(
              width: 50,
              height: 50,
              color: Colors.green,
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Container(
              width: 50,
              height: 50,
              color: Colors.green,
            ),
          )
          // Container(
          //   width: 200.0,
          //   height: 200.0,
          //   color: Colors.green,
          // ),
          // Container(
          //   width: 100.0,
          //   height: 100.0,
          //   color: Colors.yellow,
          // )
        ],
      ),
    );
  }
}
