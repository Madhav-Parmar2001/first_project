import 'package:flutter/material.dart';

class ContainerWidgetExample extends StatefulWidget {

  @override
  _ContainerWidgetExampleState createState() => _ContainerWidgetExampleState();
}

class _ContainerWidgetExampleState extends State<ContainerWidgetExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Example"),
      ),
      body: Center(
        child: Container(
         // height:MediaQuery.of(context).size.height * 0.20,
         // width: MediaQuery.of(context).size.width,
          height: 200.0,
          width: 200.0,
          alignment: Alignment.topCenter,
         //margin: EdgeInsets.only(left: 50.0),
         //padding: EdgeInsets.only(left: 30.0,top: 5.0),
         //padding: EdgeInsets.fromLTRB(10, 25, 0, 0),
         // padding: EdgeInsets.all(15.0),
          transform: Matrix4.rotationZ(150.15),
          child: Text("Hello World!",style: TextStyle(color: Colors.white)),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(color: Colors.blue,width: 5.0),
            boxShadow: [
              BoxShadow(color: Colors.grey,offset: Offset(10.0,10.0))
            ]
          ),
        ),
      ),
    );
  }
}
