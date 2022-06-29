

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget
{
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Row(
        children: [
          Text("This is Home Page"),
          Column(
            children: [
              Text("This is Home Page"),
              Row(
                children: [
                  Text("1"),
                  Text("1"),
                  Text("1"),
                ],
              ),
              Text("This is Home Page"),
            ],
          ),
          Text("This is Home Page"),
        ],
      ),
    );
  }
}

