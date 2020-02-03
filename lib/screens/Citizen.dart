import 'package:flutter/material.dart';
import 'package:ncrb/screens/lodgeComplaint.dart';
import 'package:ncrb/screens/accessAndupdate.dart';
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
                    MaterialPageRoute(builder: (context) => accessAndupdate(false)));
              },
            ),
            RaisedButton(
              child: Text("Status of Complaint/FIR"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => accessAndupdate(false)));
              },
            ),
            RaisedButton(
              child: Text("Arrested Persons and their Criminal Activities"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => accessAndupdate(false)));
              },
            ),
            RaisedButton(
              child: Text("Wanted Criminals and their Criminal Activities"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => accessAndupdate(false)));
              },
            ),
            RaisedButton(
              child: Text("Missing / Kidnaped Persons"),
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => accessAndupdate(true)));
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
              child: Text("VERIFICATION REQUEST"),
              onPressed: () {},
            ),
            RaisedButton(
              child: Text("REQUEST FOR ISSUE / RENEWAL"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    ));
  }
}
