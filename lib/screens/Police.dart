import 'package:flutter/material.dart';

class Police2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Police"),),
    body: Center(child: Container(
      margin: EdgeInsets.all(10.0),
      child:Column(children: <Widget>[
        Padding(padding: 
        EdgeInsets.only(top:10.0,bottom:10.0),
        child: RaisedButton(child:Text("Crimes",textScaleFactor: 1.5,),
        onPressed: (){

        },
        ),
        ),
        Padding(padding: 
        EdgeInsets.only(top:10.0,bottom:10.0),
        child: RaisedButton(child:Text("Criminals",textScaleFactor: 1.5,),
        onPressed: (){

        },
        ),
        )
      ])
    ),),
    );
  }

}