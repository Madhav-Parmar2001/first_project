import 'package:flutter/material.dart';

class AlertDialogBoxWidgetExample extends StatefulWidget
{
  @override
  _AlertDialogBoxWidgetExampleState createState() => _AlertDialogBoxWidgetExampleState();
}

class _AlertDialogBoxWidgetExampleState extends State<AlertDialogBoxWidgetExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog Box"),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        alignment: AlignmentDirectional.topCenter,
        child: RaisedButton(
          onPressed: (){
            AlertDialog alert=new AlertDialog(
              title: Text("Warning"),
              backgroundColor: Colors.yellow.shade100,
              contentPadding: EdgeInsets.all(15.0),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 10.0,),
                  Text("Name"),
                  TextField(
                    keyboardType: TextInputType.text,
                  ),

                  SizedBox(height: 10.0,),
                  Text("Mobile Number"),
                  TextField(
                    keyboardType: TextInputType.phone,
                  ),
                ],
              ),
              actions: [
                RaisedButton(
                  onPressed: (){},
                  child: Text("Yes"),
                ),
                RaisedButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child: Text("No"),
                ),
              ],
            );
            showDialog(context: context, builder: (context){
              return alert;
            });
          },
          child:Text("Submit"),
          color: Colors.orange,
          elevation: 20.0,
        ),
      ),
    );
  }
}
