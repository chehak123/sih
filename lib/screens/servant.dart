import 'package:flutter/material.dart';

class personalInformation extends StatelessWidget {
  TextEditingController fir = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: Text("SERVANT VERIFICATION"),
        ),
        body: Center(
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisSize: MainAxisSize.max,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
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
                            "Relative Name",
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
                            "Relation",
                            textAlign: TextAlign.center,
                            textScaleFactor: 1.2,
                          )),
                      Expanded(
                          child: RaisedButton(
                              child: Text("Select"), onPressed: null)),
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                          child: Text(
                            "Gender\n\n",
                            textAlign: TextAlign.center,
                            textScaleFactor: 1.2,
                          )),
                      Expanded(
                          child: RaisedButton(
                            child: Text("Select"),
                            onPressed: null,
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
                            "Mobile Number",
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
                            "Date of Birth",
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
                            "Language Spoken\n\n",
                            textAlign: TextAlign.center,
                            textScaleFactor: 1.2,
                          )),
                      Expanded(
                          child: RaisedButton(
                            child: Text("Select"),
                            onPressed: null,
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
                            "Country\n\n",
                            textAlign: TextAlign.center,
                            textScaleFactor: 1.2,
                          )),
                      Expanded(
                          child: RaisedButton(
                            child: Text("Select"),
                            onPressed: null,
                          )),
                    ],
                  )),

              RaisedButton(
                child: Text("Submit"),
                onPressed: () {
                  
                },
              ),
              Text(fir.text)
            ],
          ),
        ),
      )
      );
  }
}