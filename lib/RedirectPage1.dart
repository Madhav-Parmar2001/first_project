
import 'package:flutter/material.dart';

import 'Redirectpage2.dart';

class RedirectPage1 extends StatefulWidget
{
  @override
  _RedirectPage1State createState() => _RedirectPage1State();
}

class _RedirectPage1State extends State<RedirectPage1> {

  TextEditingController fullname = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Redirect page"),
      ),
      body: Container(
        child: Column(
          children: [
            Text("Name"),
            TextField(
              controller: fullname,
              keyboardType: TextInputType.text,
            ),

            SizedBox(height: 20.0,),
            RaisedButton(
              child: Text("Submit"),
              onPressed: (){
                var madhav1 = fullname.text.toString();
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>RedirectPage2(nm: madhav1,a: "25"))
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
