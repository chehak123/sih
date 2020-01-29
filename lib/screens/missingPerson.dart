import 'package:flutter/material.dart';

class missingPerson extends StatelessWidget{
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
                    child: Text("Missing Date",
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
                    child: Text("To",
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
                    child: Text("Name",
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
                    child: Text("Father's Name",
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
                    child: Text("Height",
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
                    child: Text("Religion",
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
                    child: Text("Sex",
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
                    child: Text("State",
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