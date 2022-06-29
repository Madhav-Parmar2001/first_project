import 'package:flutter/material.dart';

class DrawerWidgetExample extends StatefulWidget
{
  @override
  _DrawerWidgetExampleState createState() => _DrawerWidgetExampleState();
}

class _DrawerWidgetExampleState extends State<DrawerWidgetExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Widget Example"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                child: Text("A"),
              ),
              accountName: Text("Welcome, Guest!"),
              accountEmail: Text("test@gmail.com"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              trailing:Icon(Icons.arrow_forward_ios_outlined),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("About"),
              trailing:Icon(Icons.arrow_forward_ios_outlined),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Shop"),
              trailing:Icon(Icons.arrow_forward_ios_outlined),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Services"),
              trailing:Icon(Icons.arrow_forward_ios_outlined),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Contact"),
              trailing:Icon(Icons.arrow_forward_ios_outlined),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Logout"),
              trailing:Icon(Icons.arrow_forward_ios_outlined),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
            ),
            Container(
              height: 100.0,
              width: 100.0,
              alignment: Alignment.topCenter,
              child: Text("Hello World!",style: TextStyle(color: Colors.white)),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.blue,width: 5.0),
              ),
            )
          ],
        ),
      ),
      body: Text("Home Page"),
    );
  }
}
