import 'package:flutter/material.dart';
import 'package:ncrb/screens/CopyOfFir.dart';
import 'package:ncrb/screens/lodgeComplaint.dart';
import 'package:ncrb/screens/accessAndupdate.dart';
import 'package:ncrb/screens/missingPerson.dart';
import 'package:ncrb/screens/stolenRecovered.dart';

class Citizen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Welcome Citizens"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            RaisedButton(
              child: Text("Access and Update"),
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => accessAndupdate()));
              },
            ),
            RaisedButton(
              child: Text("Lodge a Complaint"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => lodgeComplaint()));
              },
            ),
            RaisedButton(
              child: Text("Obtain a copy of FIR"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CopyOfFir()));
              },
            ),
            RaisedButton(
              child: Text("Missing Person"),
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => accessAndupdate()));
              },
            ),
            RaisedButton(
              child: Text("Stolen/Recovered"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => stolenRecovered()));
              },
            ),
            RaisedButton(
              child: Text("Police"),
              onPressed: () {},
            ),
            RaisedButton(
              child: Text("Citizens"),
              onPressed: () {},
            ),
            RaisedButton(
              child: Text("Police"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    ));
  }
}
