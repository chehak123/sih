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

  TextStyle style=TextStyle(
    fontSize: 50,
  );
  var database=FirebaseDatabase.instance.reference().child("Users");
  @override
  void initState()
  {
    super.initState();
    getUsers().then(update);
  }
_CopyOfFirState(this.fir);
  Map<dynamic,dynamic> record={
      'name':"Name",
      'date':"Date",
      'age' :'Age',
      'height':'height'
    };

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Obtain a copy of FIR"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
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
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
                child: Text(
              "Date of Registration of FIR",
              textAlign: TextAlign.center,
              textScaleFactor: 1.2,
            )),
            Expanded(child: Text(record['date'])),
          ],
        )),
            Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
                child: Text(
              "Name of Compaint",
              textAlign: TextAlign.center,
              textScaleFactor: 1.2,
            )),
            Expanded(child: TextFormField()),
          ],
        )),
            Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
                child: Text(
              "Name of Police Station",
              textAlign: TextAlign.center,
              textScaleFactor: 1.2,
            )),
            Expanded(child: TextFormField()),
          ],
        )),
            Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
                child: Text(
              "Name of Accused",
              textAlign: TextAlign.center,
              textScaleFactor: 1.2,
            )),
            Expanded(child: TextFormField()),
          ],
        )),
            Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
                child: Text(
              "Applicant's Detail",
              textAlign: TextAlign.center,
              textScaleFactor: 1.2,
            )),
            Expanded(child: TextFormField()),
          ],
        )),
            Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
                child: Text(
              "Name",
              textAlign: TextAlign.center,
              textScaleFactor: 1.2,
            )),
            Expanded(child: TextFormField()),
          ],
        )),
            Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
                child: Text(
              "Address",
              textAlign: TextAlign.center,
              textScaleFactor: 1.2,
            )),
            Expanded(child: TextFormField()),
          ],
        )),
            Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
                child: Text(
              "Phone",
              textAlign: TextAlign.center,
              textScaleFactor: 1.2,
            )),
            Expanded(child: TextFormField()),
          ],
        )),
            Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
                child: Text(
              "Relation with accused person/n",
              textAlign: TextAlign.center,
              textScaleFactor: 1.2,
            )),
            Expanded(child: TextFormField()),
          ],
        )),
            Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
                child: Text(
              "Purpose of applying for the copy of FIR",
              textAlign: TextAlign.center,
              textScaleFactor: 1.2,
            )),
            Expanded(child: TextFormField()),
          ],
        )),
            RaisedButton(
              child: Text("Submit"),
              onPressed: () {},
            )
          ],
        ),
      ),
    ));
  }

  Future<Map<dynamic,dynamic>> getUsers() async {
    Completer<Map<dynamic,dynamic>> l = new Completer<Map<dynamic,dynamic>>();
    Map<dynamic,dynamic> x = {};
    database.child(fir)
        .once()
        .then((DataSnapshot snapshot) {
      final value = snapshot.value as Map;
      x['name']=value['name'];
      x['date']=value['date'];
      x['age']=value['age'];
      x['height']=value['height'];
      l.complete(x);
      });
    return l.future;
  }

  update(Map<dynamic,dynamic> value) {
    setState(() {
      record = value;
    });
  }
}
