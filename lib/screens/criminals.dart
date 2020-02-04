import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'CRIMINALS',
    home: G(),
  ));
}

class G extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GState();
  }
}

class _GState extends State<G> {
  final double _minimumPadding = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//			resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('CRIMINALS'),
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
                          'VIEW DETAIL OF ANY CRIMINAL',
                          style: TextStyle(
                            fontSize: 30.0,
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
                        color:Colors.indigo,
                        textColor: Colors.white,
                        child: Text(
                          'REQUEST FOR UPDATE OF CRIMINAL DETAILS',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ), onPressed: () {},

                      ),),
                  ],
                )),
          ]),
        ));
  }
}

