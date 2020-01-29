import 'package:flutter/material.dart';
import 'package:ncrb/screens/Citizen.dart';
class Welcome extends StatelessWidget{

@override
Widget build(BuildContext context)
{
  return (Scaffold(
    appBar: AppBar(
      title: Text(
        "Welcome to NCRB App"
      ),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
           RaisedButton(
              child: Text("Citizens"),
              onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>Citizen() ));
              },
            ),
           RaisedButton(
              child: Text("Police"),
              onPressed: () { },
            ),
        ],
      ),
    ),
  ));
}
}