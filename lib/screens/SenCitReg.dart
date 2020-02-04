import 'package:flutter/material.dart';

class scr extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return(Scaffold(
      appBar: AppBar(
        title: Text("Senior Citizen Registration"),
      ),
      body: Container(
          child: ListView(
            children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Text("Applicant's Name",
                    textAlign: TextAlign.center,
                    textScaleFactor: 1.2,)
                  ),
                  Expanded(
                    child: TextFormField(
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
                    child: Text("Gender",
                    textAlign: TextAlign.center,
                    textScaleFactor: 1.2,)
                  ),
                  Expanded(
                    child: TextFormField(
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
                    child: Text("Age",
                    textAlign: TextAlign.center,
                    textScaleFactor: 1.2,)
                  ),
                  Expanded(
                    child: TextFormField(
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
                    child: Text("Mobile",
                    textAlign: TextAlign.center,
                    textScaleFactor: 1.2,)
                  ),
                  Expanded(
                    child: TextFormField(
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
                    child: Text("City",
                    textAlign: TextAlign.center,
                    textScaleFactor: 1.2,)
                  ),
                  Expanded(
                    child: TextFormField(
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
                    child: Text("District",
                    textAlign: TextAlign.center,
                    textScaleFactor: 1.2,)
                  ),
                  Expanded(
                    child: TextFormField(
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
                    child: Text("Police Station",
                    textAlign: TextAlign.center,
                    textScaleFactor: 1.2,)
                  ),
                  Expanded(
                    child: TextFormField(
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
                    child: Text("Address",
                    textAlign: TextAlign.center,
                    textScaleFactor: 1.2,)
                  ),
                  Expanded(
                    child: TextFormField(
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
                    child: Text("Attach a passport size photo",
                    textAlign: TextAlign.center,
                    textScaleFactor: 1.2,)
                  ),
                  Expanded(
                    child: TextFormField(
                    )
                  ),
                ],
              )
              ),
              RaisedButton(
              child: Text("Upload"),
              onPressed: () {},
            ),
            RaisedButton(
              child: Text("Submit"),
              onPressed: () {},
            )
            ],
          ),
      ),
    ));
  }
  Widget fields(String x)
  {
    return  Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Text(x,
                    textAlign: TextAlign.center,
                    textScaleFactor: 1.2,)
                  ),
                  Expanded(
                    child: TextFormField(
                    )
                  ),
                ],
              )
              );
  }
}