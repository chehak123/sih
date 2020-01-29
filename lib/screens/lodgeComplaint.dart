import 'package:flutter/material.dart';

class lodgeComplaint extends StatelessWidget {
  TextEditingController fir = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Lodge Complaint"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
                child: Text(
              "Police Station Name",
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
              "Subject",
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
              "Complaint Type",
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
              "City",
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
              "Postal Code",
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
              "Email",
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
              "Complaint\n\n",
              textAlign: TextAlign.center,
              textScaleFactor: 1.2,
            )),
            Expanded(child: TextFormField()),
          ],
        )),
            RaisedButton(
              child: Text("Submit"),
              onPressed: () {
                fir.text = "Hello";
              },
            ),
            Text(fir.text)
          ],
        ),
      ),
    ));
  }
}
