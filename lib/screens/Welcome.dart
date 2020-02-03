import 'package:flutter/material.dart';
import 'package:ncrb/screens/Citizen.dart';
import 'package:ncrb/screens/Police.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Welcome to NCRB App"),
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Citizen()));
              },
            ),
            RaisedButton(
              child: Text("Police"),
              onPressed: () {
<<<<<<< HEAD
=======
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Police2()));
               database.child("1").set({
          'email': "agg",
          'presence': false,
        });
>>>>>>> 793225359cd91cf3de0f3fd3d4676382719f4c22
              },
            ),
          ],
        ),
      ),
    ));
  }
}
