import 'package:flutter/material.dart';

class CopyOfFir extends StatelessWidget {
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
              "Date of Registration of FIR",
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

  Widget fields(String x) {
    return Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
                child: Text(
              x,
              textAlign: TextAlign.center,
              textScaleFactor: 1.2,
            )),
            Expanded(child: TextFormField()),
          ],
        ));
  }
}
