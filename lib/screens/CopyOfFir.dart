import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'dart:async';

class CopyOfFir extends StatefulWidget {
  String fir;
  CopyOfFir(this.fir);
  @override
  _CopyOfFirState createState() => _CopyOfFirState(fir);
}

class _CopyOfFirState extends State<CopyOfFir> {
  String fir;

  TextStyle style = TextStyle(
    fontSize: 50,
  );
  var database = FirebaseDatabase.instance.reference().child("Users");
  @override
  void initState() {
    super.initState();
    getUsers().then(update);
  }

  _CopyOfFirState(this.fir);
  Map<dynamic, dynamic> record = {
    'name': "Applicant's Name",
    'date': "Date",
    'details': "Description",
    'ps': "Police Station",
    'naccused': "Name of Accused person",
    'address': "Address",
    'phone': "Phone Number",
    'purpose': "Purpose",
  };

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Obtain a copy of FIR"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "FIR No.",
                      textAlign: TextAlign.center,
                      textScaleFactor: 1.2,
                    )),
                    Expanded(child: Text(fir))
                  ],
                )),
            Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Date of Registration\n of FIR",
                      textAlign: TextAlign.center,
                      textScaleFactor: 1.2,
                    )),
                    Expanded(child: Text(record['date'])),
                  ],
                )),
            Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Details of Compaint",
                      textAlign: TextAlign.center,
                      textScaleFactor: 1.2,
                    )),
                    Expanded(child: Text(record['details'])),
                  ],
                )),
            Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Name of Police Station",
                      textAlign: TextAlign.center,
                      textScaleFactor: 1.2,
                    )),
                    Expanded(child: Text(record['ps'])),
                  ],
                )),
            Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Name of Accused",
                      textAlign: TextAlign.center,
                      textScaleFactor: 1.2,
                    )),
                    Expanded(child: Text(record['naccused'])),
                  ],
                )),
            Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "\nApplicant's Detail",
                      textAlign: TextAlign.center,
                      textScaleFactor: 1.2,
                    )),
                  ],
                )),
            Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Name",
                      textAlign: TextAlign.center,
                      textScaleFactor: 1.2,
                    )),
                    Expanded(child: Text(record['name'])),
                  ],
                )),
            Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Address",
                      textAlign: TextAlign.center,
                      textScaleFactor: 1.2,
                    )),
                    Expanded(child: Text(record['address'])),
                  ],
                )),
            Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Phone",
                      textAlign: TextAlign.center,
                      textScaleFactor: 1.2,
                    )),
                    Expanded(child: Text(record['phone'])),
                  ],
                )),
            Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Purpose of applying for the copy of FIR",
                      textAlign: TextAlign.center,
                      textScaleFactor: 1.2,
                    )),
                    Expanded(child: Text(record['purpose'])),
                  ],
                )),
            RaisedButton(
              child: Text("Download"),
              onPressed: () {},
            )
          ],
        ),
      ),
    ));
  }

  Future<Map<dynamic, dynamic>> getUsers() async {
    Completer<Map<dynamic, dynamic>> l = new Completer<Map<dynamic, dynamic>>();
    Map<dynamic, dynamic> x = {};
    database.child(fir).once().then((DataSnapshot snapshot) {
      final value = snapshot.value as Map;
      x['date'] = value['date'];
      x['details'] = value['details'];
      x['ps'] = value['ps'];
      x['naccused'] = value['naccused'];
      x['name'] = value['name'];
      x['address'] = value['address'];
      x['phone'] = value['phone'];
      x['purpose'] = value['purpose'];
      l.complete(x);
    });
    return l.future;
  }

  update(Map<dynamic, dynamic> value) {
    setState(() {
      record = value;
    });
  }
}
