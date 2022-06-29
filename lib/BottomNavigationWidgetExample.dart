
import 'package:flutter/material.dart';

class BottomNavigationWidgetExample extends StatefulWidget
{
  @override
  _BottomNavigationWidgetExampleState createState() => _BottomNavigationWidgetExampleState();
}

class _BottomNavigationWidgetExampleState extends State<BottomNavigationWidgetExample> {
  var selected=1;

  // tab1()
  // {
  //   return Column(
  //     children: [
  //       Text("Home"),
  //       Text("Home"),
  //       Text("Home"),
  //       Text("Home")
  //     ],
  //   );
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (selected==0)?Text("Home"):(selected==1)?Text("Calls"):Text("Settings"),
        backgroundColor: (selected==0)?Colors.red:(selected==1)?Colors.blue:Colors.amber,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.grey,
        onTap: (index)
        {
          setState(() {
            selected=index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: "Calls"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings"
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            (selected==0)?Text("Message"):Visibility(child: Text(""),visible: false,),
            (selected==1)?Text("Calls"):Visibility(child: Text(""),visible: false,),
            (selected==2)?Text("Settings"):Visibility(child: Text(""),visible: false,),
          ],
        ),
      ),
    );
  }
}
