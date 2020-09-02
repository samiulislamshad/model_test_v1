import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loginLayout extends StatefulWidget {
  @override
  _loginLayoutState createState() => _loginLayoutState();
}

class _loginLayoutState extends State<loginLayout>
{
  ////////////////VARIABLES////////////
  var loginUsername;
  var loginPassword;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        ////////APPBAR//////////////
        /*appBar: AppBar(
          title: Text('Model Test'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent[600],

        ),*/

        /////////BODY//////////////////
        body: Center(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(children: <Widget>[

                ///////////USERNAME BOX////////////
                SizedBox(
                  width: 300.0,
                  height: 50.0,
                  child: TextField(
                    decoration: InputDecoration(
                      //filled: true,
                      //fillColor: Colors.lightBlue[100],
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue[600]),
                          borderRadius: BorderRadius.circular(50.0)
                      ),
                      hintText: "username",
                    ),
                    onSubmitted: (String username)
                    {
                      //verification code goes here
                      setState(() {
                        loginUsername= username;
                      });
                    },
                  ),
                ),


                /////////PASSWORD BOX///////////
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: SizedBox(
                    width: 300.0,
                    height: 50.0,
                    child: TextField(
                      decoration: InputDecoration(
                        //filled: true,
                        //fillColor: Colors.lightBlue[100],
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue[600]),
                            borderRadius: BorderRadius.circular(50.0)
                        ),
                        hintText: "password",
                      ),
                      onSubmitted: (String password)
                      {
                        //verification code goes here
                        setState(() {
                          loginPassword= password;
                        });
                      },
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(20.0),
                ),

                ///////////LOGIN BUTTON/////////////
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

                ////////////ALREADY HAVE AN ACCOUNT TEXT/////////////
                Padding(
                  padding: EdgeInsets.all(80.0),
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                        'Already have an account?'
                    ),

                    Padding(
                      padding: EdgeInsets.all(10.0),
                    ),

                    ////////signup button////////////
                    ButtonTheme(
                      minWidth: 50.0,
                      height: 30.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        side: BorderSide.none,
                      ),
                      child: RaisedButton(
                        onPressed: () {
                          //Navigator.push(context, MaterialPageRoute(builder: (context) => signUpLayout()));
                          Navigator.pushNamed(context, '/signupLayout');
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        focusElevation: 5.0,
                        color: Colors.lightBlue[400],
                      ),
                    )

                  ],
                ),

              ]),
            ),
          ),
        ),

        backgroundColor: Colors.blueAccent[900],
        /*floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Text('click'),
          backgroundColor: Colors.lightBlue[400],
        ),*/
      ),
    );
  }
}
