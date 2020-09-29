import 'package:flutter/material.dart';
import 'package:flutter_begin_2/model/user_model.dart';

class PageGetValue extends StatefulWidget {
  final UserModel value;

  PageGetValue({Key key, this.value}): super(key : key);

  @override
  _PageGetValueState createState() => _PageGetValueState();
}

class _PageGetValueState extends State<PageGetValue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Passing Value Page'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                child: Text(' PASSED VALUE', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0
                  ), 
                  textAlign: TextAlign.center,
                ),
                padding: EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 20.0),
              ),
              Padding(
                child: Text('Username : ${widget.value.username}', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0
                  ),
                ),
                padding: EdgeInsets.all(10.0),
              ),
              Padding(
                child: Text('Email : ${widget.value.email}', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0
                  ),
                ),
                padding: EdgeInsets.all(10.0),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
