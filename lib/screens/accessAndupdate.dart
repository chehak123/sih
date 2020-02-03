import 'package:flutter/material.dart';
import 'package:ncrb/screens/missingPerson.dart';
import 'package:firebase_database/firebase_database.dart';

class accessAndupdate extends StatelessWidget {
  final database = FirebaseDatabase.instance.reference().child("users");
  TextEditingController fir = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Access and Update"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 50),
              child: TextFormField(
                  controller: fir,
                  keyboardType: TextInputType.number,
                  decoration:
                      InputDecoration(labelText: "Enter the FIR Number")),
            ),
            RaisedButton(
              child: Text("Submit"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>missingPerson(fir.text)));
              },
            ),
            Text(fir.text)
          ],
        ),
      ),
    ));
  }
}
