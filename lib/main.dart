
import 'package:flutter/material.dart';
import 'AlertDialogBoxWidgetExample.dart';
import 'All/FirstHome.dart';
import 'ButtonWidgetExample.dart';
import 'ChechBoxWidgetButton.dart';
import 'DrawerWidgetExample.dart';
import 'DropDownWidgetExample.dart';
import 'GridViewWidgetExample.dart';
import 'HorizontalListViewExample.dart';
import 'ImageExample.dart';
import 'ListViewExample.dart';
import 'NavigatorCalculatorExample1.dart';
import 'RadioButtonWidgetExample.dart';
import 'RedirectPage1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      // home: DrawerWidgetExample(),
      home: FirstHome(),
    );
  }
}