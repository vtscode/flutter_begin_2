import 'package:flutter/material.dart';
import 'package:flutter_begin_2/model/user_model.dart';
import 'page_get_data.dart';

class PagePassingValue extends StatefulWidget {
  @override
  _PagePassingValueState createState() => _PagePassingValueState();
}

class _PagePassingValueState extends State<PagePassingValue> {

  //declare variable for editing controller
  var _userController = TextEditingController();
  var _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Passing Value Page'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left : 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                Padding(
                  child: Text('Please input data',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  padding:EdgeInsets.only(bottom: 20.0),
                ),
                TextFormField(
                  controller: _userController,
                  decoration: InputDecoration(
                    hintText: 'Input Username'
                  ),
                ),TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: 'Input Email'
                  ),
                ),
                MaterialButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  onPressed: (){
                    // send data to other page
                    var route = MaterialPageRoute(builder: (BuildContext build)=>
                      PageGetValue(
                        value: UserModel(
                          username: _userController.text,
                          email : _emailController.text
                        )));
                    Navigator.push(context, route);
                  },
                  child: Text('Submit'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
