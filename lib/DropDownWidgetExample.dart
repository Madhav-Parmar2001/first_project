import 'package:flutter/material.dart';

class DropDownListWidgetExample extends StatefulWidget
{
  @override
  _DropDownListWidgetExampleState createState() => _DropDownListWidgetExampleState();
}

class _DropDownListWidgetExampleState extends State<DropDownListWidgetExample> {
  var groupvalue="i1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropDownWidgetExample"),
      ),
      body: Column(
        children: [
          DropdownButton(
            value: groupvalue,
            onChanged: (v)
            {
              setState(() {
                groupvalue=v;
              });
            },
            items: [
              DropdownMenuItem(
                child: Text("Item 1"),
                value: "i1",
              ),
              DropdownMenuItem(
                child: Text("Item 2"),
                value: "i2",
              ),
              DropdownMenuItem(
                child: Text("Item 3"),
                value: "i3",
              ),

            ],
          ),
          RaisedButton(
            onPressed: (){
              print("Selected : "+groupvalue);
            },
            child: Text("Submit"),
          )
        ],
      ),
    );
  }
}
