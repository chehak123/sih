import 'package:flutter/material.dart';
import 'package:ncrb/screens/servant.dart';
import 'package:ncrb/screens/SenCitReg.dart';

class D extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DState();
  }
}

class _DState extends State<D> {
  final double _minimumPadding = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//			resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('VERIFICATION REQUEST'),
        ),
        body: Container(
          margin: EdgeInsets.all(_minimumPadding * 2),
          child: ListView(children: <Widget>[
            Padding(
                padding: EdgeInsets.only(
                    bottom: _minimumPadding, top: _minimumPadding),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        color:Colors.deepOrange,
                        textColor: Colors.white,
                        child: Text(
                          'SERVANT',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ), onPressed: () {
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context) => personalInformation()));
                        },

                      ),),
                  ],
                )),
            Padding(
                padding: EdgeInsets.only(
                    bottom: _minimumPadding, top: _minimumPadding),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        color:Colors.indigo,
                        textColor: Colors.white,
                        child: Text(
                          'EMPLOYMENT',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ), onPressed: () {},

                      ),),
                  ],
                )),
            Padding(
                padding: EdgeInsets.only(
                    bottom: _minimumPadding, top: _minimumPadding),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        color:Colors.green,
                        textColor: Colors.white,
                        child: Text(
                          'PASSPORT',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ), onPressed: () {},

                      ),),
                  ],
                )),
            Padding(
                padding: EdgeInsets.only(
                    bottom: _minimumPadding, top: _minimumPadding),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        color:Colors.amber,
                        textColor: Colors.white,
                        child: Text(
                          'SENIOR CITIZEN REGISTRATION',
                          style: TextStyle(
                            fontSize: 23.0,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ), onPressed: () {
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context) => scr()));
                        },

                      ),),
                  ],
                )),
          ]),
        ));
  }
}
