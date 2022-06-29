import 'package:first_project/AlertDialogBoxWidgetExample.dart';
import 'package:first_project/AppBarwidgetExample.dart';
import 'package:first_project/BottomNavigationWidgetExample.dart';
import 'package:first_project/ButtonWidgetExample.dart';
import 'package:first_project/CalculatorExample.dart';
import 'package:first_project/CardWidgetExample.dart';
import 'package:first_project/ChechBoxWidgetButton.dart';
import 'package:first_project/ContainerWidgetExample.dart';
import 'package:first_project/DrawerWidgetExample.dart';
import 'package:first_project/DropDownWidgetExample.dart';
import 'package:first_project/ExpandedFlexibleExample.dart';
import 'package:first_project/GridViewWidgetExample.dart';
import 'package:first_project/HomePage.dart';
import 'package:first_project/HomeScreen.dart';
import 'package:first_project/HorizontalListViewExample.dart';
import 'package:first_project/ImageExample.dart';
import 'package:first_project/LoginPage.dart';
import 'package:first_project/NavigatorCalculatorExample1.dart';
import 'package:first_project/RadioButtonWidgetExample.dart';
import 'package:first_project/RedirectPage1.dart';
import 'package:first_project/SharedPrefarenceExample.dart';
import 'package:first_project/SignUp.dart';
import 'package:first_project/StackExample.dart';
import 'package:first_project/StateManagementExample.dart';
import 'package:first_project/TabActivityWidgetExample.dart';
import 'package:first_project/TextField_WidgetExample.dart';
import 'package:first_project/TextFormFieldWidgetExample.dart';
import 'package:first_project/TextWidgetExample.dart';
import 'package:flutter/material.dart';

import '../ListViewExample.dart';

class FirstHome extends StatefulWidget {
  @override
  State<FirstHome> createState() => _FirstHomeState();
}

class _FirstHomeState extends State<FirstHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Home"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text("AlertDialogBox Widget Example"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => AlertDialogBoxWidgetExample()));
            },
          ),
          const Divider(),

          ListTile(
            title: const Text("AppBar Widget Example"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => AppBarWidgetExample()));
            },
          ),
          const Divider(),

          ListTile(
            title: const Text("BottomNavigation Widget Example"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigationWidgetExample()));
            },
          ),
          const Divider(),

          ListTile(
            title: const Text("Button Widget Example"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ButtonWidgetExample()));
            },
          ),
          const Divider(),

          ListTile(
            title: const Text("Calculator"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Calculator()));
            },
          ),
          const Divider(),

          ListTile(
            title: const Text("Card Widget Example"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CardWidgetExample()));
            },
          ),
          const Divider(),

          ListTile(
            title: const Text("CheckBox Widget Example"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CheckBoxWidgetExample()));
            },
          ),
          const Divider(),

          ListTile(
            title: const Text("Container Widget Example"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ContainerWidgetExample()));
            },
          ),
          const Divider(),

          ListTile(
            title: const Text("Drawer Widget Example"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => DrawerWidgetExample()));
            },
          ),
          const Divider(),

          ListTile(
            title: const Text("DropDownList Widget Example"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => DropDownListWidgetExample()));
            },
          ),
          const Divider(),

          ListTile(
            title: const Text("Expanded Flexible Example"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ExpandedFlexibleExample()));
            },
          ),
          const Divider(),

          ListTile(
            title: const Text("GridView Widget Example"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => GridViewWidgetExample()));
            },
          ),
          const Divider(),

          ListTile(
            title: const Text("HomePage"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          const Divider(),

          ListTile(
            title: const Text("HomeScreen"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
          const Divider(),

          ListTile(
            title: const Text("Horizontal ListView Example"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HorizontalListViewExample()));
            },
          ),
          const Divider(),

          ListTile(
            title: const Text("Image Example"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ImageExample()));
            },
          ),
          const Divider(),

          ListTile(
            title: const Text("ListView Example"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ListViewExample()));
            },
          ),
          const Divider(),

          ListTile(
            title: const Text("Login Page"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
          const Divider(),

          ListTile(
            title: const Text("Radiobutton Widget Example"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => RadiobuttonWidgetExample()));
            },
          ),
          const Divider(),

          ListTile(
            title: const Text("Redirect Page 1"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => RedirectPage1()));
            },
          ),
          const Divider(),

          ListTile(
            title: const Text("Shared Preferance Example"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SharedPreferanceExample()));
            },
          ),
          const Divider(),

          ListTile(
            title: const Text("SignUp"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
            },
          ),
          const Divider(),

          ListTile(
            title: const Text("Stack Example"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => StackExample()));
            },
          ),
          const Divider(),

          ListTile(
            title: const Text("State Management Example"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => StateManagementExample()));
            },
          ),
          const Divider(),

          ListTile(
            title: const Text("TabActivity Widget Example"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => TabActivityWidgetExample()));
            },
          ),
          const Divider(),

          ListTile(
            title: const Text("TextField Widget Example"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => TextFieldWidgetExample()));
            },
          ),
          const Divider(),

          ListTile(
            title: const Text("TextFormField Widget Example"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => TextFormFieldWidgetExample()));
            },
          ),
          const Divider(),

          ListTile(
            title: const Text("Text Widget Example"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => TextWidgetExample()));
            },
          ),
          const Divider(),


        ],
      ),
    );
  }
}
