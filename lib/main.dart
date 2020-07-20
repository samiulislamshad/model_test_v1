import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        ////////APPBAR//////////////
        appBar: AppBar(
          title: Text('Model Test'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent[600],
        ),

        /////////BODY//////////////////
        body: Center(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 50.0, 0, 20.0),
              child: ButtonTheme(
                minWidth: 200.0,
                height: 50.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  side: BorderSide.none,
                ),
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  focusElevation: 5.0,
                  color: Colors.lightBlue[400],
                ),
              ),
            ),
            ButtonTheme(
              minWidth: 200.0,
              height: 50.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
                side: BorderSide.none,
              ),
              child: RaisedButton(
                onPressed: () {},
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                focusElevation: 5.0,
                color: Colors.lightBlue[400],
              ),
            )
          ]),
        ),

        backgroundColor: Colors.lightBlueAccent[900],
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Text('click'),
          backgroundColor: Colors.deepOrange[700],
        ),
      ),
    );
  }
}
