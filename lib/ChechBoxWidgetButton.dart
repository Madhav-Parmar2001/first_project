import 'package:flutter/material.dart';

class CheckBoxWidgetExample extends StatefulWidget
{
  @override
  _CheckBoxWidgetExampleState createState() => _CheckBoxWidgetExampleState();
}

class _CheckBoxWidgetExampleState extends State<CheckBoxWidgetExample> {
  var chk1=false,chk2=false,chk3=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBoxWidgetExample"),
      ),
      body: Column(
        children: [
          Checkbox(
            value: chk1,
            onChanged: (v)
            {
              setState(() {
                chk1=v;
              });
            },
          ),
          Checkbox(
            value: chk2,
            onChanged: (v)
            {
              setState(() {
                chk2=v;
              });
            },
          ),
          Checkbox(
            value: chk3,
            onChanged: (v)
            {
              setState(() {
                chk3=v;
              });
            },
          ),
          RaisedButton(
            onPressed: (){
              if(chk1)
              {
                print("Checkbox 1 Checked");
              }
              if(chk2)
              {
                print("Checkbox 2 Checked");
              }
              if(chk3)
              {
                print("Checkbox 3 Checked");
              }
            },
            child: Text("Submit"),
          )
        ],
      ),
    );
  }
}
