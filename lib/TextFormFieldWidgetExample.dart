import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFormFieldWidgetExample extends StatefulWidget
{
  @override
  _TextFormFieldWidgetExampleState createState() => _TextFormFieldWidgetExampleState();
}

class _TextFormFieldWidgetExampleState extends State<TextFormFieldWidgetExample> {

  var formkey =  GlobalKey<FormState>();
  TextEditingController _name = TextEditingController();
  TextEditingController _contact = TextEditingController();

  @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextFormFieldWidgetExample"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Text("Name"),
              TextFormField(
                controller: _name,
                keyboardType: TextInputType.text,
                validator: (val){
                  if(val.length<=0)
                    {
                      return "Please enter name";
                    }
                  return null;
                },
              ),
              Text("Contact"),
              TextFormField(
                controller: _contact,
                keyboardType: TextInputType.text,
                validator: (val){
                  if(val.length<=0)
                  {
                    return "Please enter mobile number";
                  }
                  else if(val.length!=10)
                  {
                    return "Not Valid Mobile number";
                  }
                  else
                  {
                    return null;
                  }
                },
              ),
              RaisedButton(
                onPressed: (){
                  if(formkey.currentState.validate())
                    {
                      var n = _name.text.toString();
                      print("Name : "+n);
                    }
                },
                color: Colors.black,
                child: Text("Submit"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
