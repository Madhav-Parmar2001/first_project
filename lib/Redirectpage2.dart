import 'package:flutter/material.dart';

class RedirectPage2 extends StatefulWidget
{
  var nm = "";
  var a = "";
  RedirectPage2({this.nm,this.a});
  @override
  _RedirectPage2State createState() => _RedirectPage2State();
}

class _RedirectPage2State extends State<RedirectPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
      body: Column(
        children: [ 
          Text(widget.nm+widget.a),
          RaisedButton(
            child: Text("Back"),
            onPressed: (){
              // var madhav1 = fullname.text.toString();
              // print("Name : "+madhav1);

              Navigator.of(context).pop();


            },
          )
        ],
      ),
    );
  }
}
