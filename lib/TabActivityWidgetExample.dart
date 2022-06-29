
import 'package:flutter/material.dart';

import 'ContainerWidgetExample.dart';
import 'ListViewExample.dart';
import 'TextField_WidgetExample.dart';
import 'TextWidgetExample.dart';

class TabActivityWidgetExample extends StatefulWidget
{
  @override
  _TabActivityWidgetExampleState createState() => _TabActivityWidgetExampleState();
}

class _TabActivityWidgetExampleState extends State<TabActivityWidgetExample>
{
  @override
  Widget build(BuildContext context)
  {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Activity Example"),
          bottom: TabBar(
            indicatorColor: Colors.red,
            labelColor: Colors.white,
            tabs: [
              Tab(
               // child: Text("Camera"),
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text("Chats"),
              ),
              Tab(
                child: Text("Status"),
              ),
              Tab(
                child: Text("Calls"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TextWidgetExample(),
            TextFieldWidgetExample(),
            ContainerWidgetExample(),
            ListViewExample()
          ],
        ),
      ),
    );
  }
}
