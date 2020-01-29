import 'package:flutter/material.dart';

class stolenRecoveredPage extends StatelessWidget{
  TextEditingController x1,x2,x3;
  @override
  Widget build(BuildContext context)
  {
    return(Scaffold(
      appBar: AppBar(
        title: Text("STOLEN/RECOVERED VEHICLES",
        style: TextStyle(
          fontSize: 20,
          color: Colors.redAccent
        ),),
      ),
      body: Container(
          child: Column(
            children: <Widget>[
            fields("From",x1),
            fields("To",x2),
            fields("State",x3),
            Container(
              margin: EdgeInsets.only(top:40),
              child: RaisedButton(
              child: Text("Submit"),
              onPressed: () {
                debugPrint(x1.text);
              },
            ),
            )
            ],
          ),
      ),
    ));
  }
  Widget fields(String x,TextEditingController y)
  {
    return  Container(
              margin: EdgeInsets.only(left: 10,right: 10),
              child: Row(
               // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Text(x,
                    //textAlign: TextAlign.center,
                    textScaleFactor: 1.2,)
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: y,
                    )
                  ),
                ],
              )
              );
  }
}