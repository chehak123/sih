import 'package:flutter/material.dart';
import 'package:ncrb/screens/stolenRecoveredpage.dart';
class stolenRecovered extends StatelessWidget{

  @override
  Widget build(BuildContext context)
  {
    return(
      Scaffold(
        appBar: AppBar(
          title: Text("Stolen/Recovered"),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
       child: RaisedButton(
          color: Colors.lightBlueAccent,
          child: Text("VEHICLES",
          style: TextStyle(
            fontSize: 40,
          ),),
          onPressed: ()
          {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>stolenRecoveredPage()));
          },
        ),
      ),

      Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
       child: RaisedButton(
          color: Colors.lightBlueAccent,
          child: Text("ARMS",
          style: TextStyle(
            fontSize: 40,
          ),),
          onPressed: ()
          {
          },
        ),
      ),

      Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
       child: RaisedButton(
          color: Colors.lightBlueAccent,
          child: Text("OTHER PROPERTIES",
          style: TextStyle(
            fontSize: 40,
          ),),
          onPressed: ()
          {
          },
        ),
      ),
            ],
          ),
        ),
      )
    );
  }
}