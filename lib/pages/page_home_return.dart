import 'package:flutter/material.dart';

class PageHomeReturnData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Return data'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Center(
        child: SelectionButton(),
      ),
    );
  }
}

class SelectionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: (){
        _navigateAndDisplaySelectionItem(context);
      },
      child: Text('Please click her to see an option'),
    );
  }

  _navigateAndDisplaySelectionItem(BuildContext context) async{
    final resultOption = await Navigator.push(context,MaterialPageRoute(builder: (context) => SelectionOptionScreen()));

    Scaffold.of(context)
      ..showSnackBar(SnackBar(content: Text('$resultOption')));
  }
}

class SelectionOptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose an Option'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed:(){
                  Navigator.pop(context,'This is the toption yes');
                },
                color: Colors.deepOrangeAccent,
                textColor: Colors.white,
                child: Text('yes'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed:(){
                  Navigator.pop(context,'This is the toption no');
                },
                color: Colors.deepOrangeAccent,
                textColor: Colors.white,
                child: Text('no'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}