import 'package:flutter/material.dart';

class noc extends StatelessWidget {
  TextEditingController fir = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Request for NoCs/Clearances"),
      ),
      body: Center(
        child: ListView(
//          mainAxisAlignment: MainAxisAlignment.center,
//          mainAxisSize: MainAxisSize.max,
//          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
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
                          "Father;s Name",
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
                          "Place of Birth",
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
                          "Birthdate",
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
                          "Passport No.",
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
                          "Purpose",
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
                          "Passport size photo",
                          textAlign: TextAlign.center,
                          textScaleFactor: 1.2,
                        )),
                    Expanded(child: RaisedButton(
                        child:Text("ATTACH FILE"),
                        onPressed: null
                    )),
                  ],
                )),
            Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                        child: Text(
                          "Signature\n\n",
                          textAlign: TextAlign.center,
                          textScaleFactor: 1.2,
                        )),
                    Expanded(child: RaisedButton(
                      child: Text("ATTACH FILE"),
                      onPressed: null,
                    )),
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