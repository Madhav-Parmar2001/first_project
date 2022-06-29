import 'package:flutter/material.dart';

class AppBarWidgetExample extends StatefulWidget
{
  @override
  _AppBarWidgetExampleState createState() => _AppBarWidgetExampleState();
}

class _AppBarWidgetExampleState extends State<AppBarWidgetExample> {
  get handalClick => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
        leading: IconButton(icon: Icon(Icons.home_filled),onPressed: (){Navigator.of(context).pop();},),
        actions: [
          PopupMenuButton(
            onSelected: handalClick,
            itemBuilder: (BuildContext context){
              return {"Login","Settings"}.map((String choice) {
                return PopupMenuItem(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                    value:choice,
                    child: Text(choice)
                );
              }).toList();
            },
          )
        ],
      ),
    );
  }
}
