import 'package:flutter/material.dart';
import 'package:ncrb/screens/noc.dart';

class E extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EState();
  }
}

class _EState extends State<E> {
  final double _minimumPadding = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//			resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('REQUEST FOR ISSUE/RENEWAL'),
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
                        color: Colors.deepOrange,
                        textColor: Colors.white,
                        child: Text(
                          'NOC',
                          style: TextStyle(
                            fontSize: 45.0,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => noc()));
                        },
                      ),
                    ),
                  ],
                )),
            Padding(
                padding: EdgeInsets.only(
                    bottom: _minimumPadding, top: _minimumPadding),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        color: Colors.indigo,
                        textColor: Colors.white,
                        child: Text(
                          'PERMIT',
                          style: TextStyle(
                            fontSize: 45.0,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                )),
            Padding(
                padding: EdgeInsets.only(
                    bottom: _minimumPadding, top: _minimumPadding),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        color: Colors.green,
                        textColor: Colors.white,
                        child: Text(
                          'CLEARANCE',
                          style: TextStyle(
                            fontSize: 45.0,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                )),
          ]),
        ));
  }
}
