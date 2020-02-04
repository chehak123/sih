import 'package:flutter/material.dart';

class firStatus extends StatelessWidget {
  TextEditingController fir = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Status of Complaint/FIR"),
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
                            "Select District",
                            textAlign: TextAlign.center,
                            textScaleFactor: 1.2,
                          )),
                      Expanded(
                          child: RaisedButton(
                              child: Text("Choose"), onPressed: null)),
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                          child: Text(
                            "Select Police Station\n\n",
                            textAlign: TextAlign.center,
                            textScaleFactor: 1.2,
                          )),
                      Expanded(
                          child: RaisedButton(
                            child: Text("Choose"),
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
                            "Registration Date",
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
                            "Time",
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
                            "Enter security code",
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
    );
  }
}