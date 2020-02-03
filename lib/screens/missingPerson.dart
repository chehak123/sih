import 'dart:async';

import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
class missingPerson extends StatefulWidget{
  String fir;
  missingPerson(this.fir);
  @override
  _missingPersonState createState() => _missingPersonState(fir);
}

class _missingPersonState extends State<missingPerson> {
  String fir;
  TextStyle style=TextStyle(
    fontSize: 50,
  );
  Map<dynamic,dynamic> record={
      'name':"Name",
      'date':"Date",
      'age' :'Age',
      'height':'height'
    };
  _missingPersonState(this.fir);
  var database=FirebaseDatabase.instance.reference().child("Users");
  @override
  void initState()
  {
    super.initState();
    getUsers().then(update);
  }
  @override
  Widget build(BuildContext context)
  {
    return(Scaffold(
      appBar: AppBar(
        title: Text("Missing Persons"),
      ),
      body: Container(
          child: Column(
            children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Text("Date", style: style,
                    textAlign: TextAlign.center,
                    textScaleFactor: 1.2,)
                  ),
                  Expanded(
                    child: Text(record['date'], style: style,
                    )
                  ),
                ],
              )
              ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Text("Name",style: style,
                    textAlign: TextAlign.center,
                    textScaleFactor: 1.2,)
                  ),
                  Expanded(
                    child: Text(record['name'],style: style,
                    )
                  ),
                ],
              )
              ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Text("Age",style: style,
                    textAlign: TextAlign.center,
                    textScaleFactor: 1.2,)
                  ),
                  Expanded(
                    child: Text(record['age'],style: style,
                    )
                  ),
                ],
              )
              ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Text("Height",style: style,
                    textAlign: TextAlign.center,
                    textScaleFactor: 1.2,)
                  ),
                  Expanded(
                    child: Text(record['height'],style: style,               )
                  ),
                ],
              )
              ),
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