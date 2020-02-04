import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'CRIMES',
    home: F(),
  ));
}

class F extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FState();
  }
}

class _FState extends State<F> {
  final double _minimumPadding = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//			resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('CRIMES'),
        ),
        body: Container(
          margin: EdgeInsets.only(top:_minimumPadding * 40),
          child: ListView(children: <Widget>[
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
                          'VIEW DETAIL OF ANY FIR',
                          style: TextStyle(
                            fontSize: 50.0,
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