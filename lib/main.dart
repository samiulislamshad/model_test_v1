//import 'package:flutter/cupertino.dart';
//import 'package:direct_select/direct_select.dart';
//import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:model_test/signupLayout.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>
{
  var loginUsername;
  var loginPassword;

  @override
  Widget build(BuildContext context)
  {
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => signUpLayout()));
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


class signUpLayout extends StatefulWidget {
  @override
  _signUpLayoutState createState() => _signUpLayoutState();
}

class _signUpLayoutState extends State<signUpLayout>
{
  var fullName;
  var institution;

  var gender = ['Male', 'Female', 'Other']; //dropdown item list
  var genderSelected='Female';  //default value

  var version = ['Bangla', 'English'];  //dropdown item list
  var selectedVersion ='Bangla';  //default value

  var examType= ['PSC', 'JSC', 'SSC', 'HSC']; //dropdown item list
  var selectedExamType= 'PSC';  //default value

  var examYear= ['2020', '2021', '2022', '2023', '2024', '2025'];
  var selectedExamYear= '2020';

  DateTime dateOfBirth;

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        resizeToAvoidBottomInset: true,

        ////////BODY///////////
        body: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[

                //////////FULL NAME////////////
                Padding(
                  padding: EdgeInsets.fromLTRB(0,50.0,0,0),
                  child: SizedBox(
                    width: 300.0,
                    height: 50.0,
                    child: TextField(
                      decoration: InputDecoration(
                        //filled: true,
                        //fillColor: Colors.blueAccent,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue[600]),
                            borderRadius: BorderRadius.circular(50.0)
                        ),
                        hintText: "Full Name",
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red[500]),
                          borderRadius: BorderRadius.circular((50.0)),
                        ),
                      ),
                      onSubmitted: (String name)
                      {
                        print('the name is $name');
                        //verification methods go here
                      },
                      keyboardType: TextInputType.text,

                    ),
                  ),
                ),

                /////////////GENDER///////////
                Padding(
                  padding: EdgeInsets.fromLTRB(30,30,0,0),
                  child: Row(
                    children: <Widget>[
                      Text('Gender',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 50, 0),
                      ),

                      SizedBox(
                        width: 100.0,
                        height: 50.0,
                        child: DropdownButton<String>(
                          items: gender.map((String dropDownStringItem)
                          {
                            return DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: Text(dropDownStringItem),
                            );
                          }).toList(),

                          onChanged: (String newValue)
                          {
                            setState(() {
                              genderSelected=newValue;
                              //print(genderSelected);
                            });
                          },
                          value: genderSelected,
                          isExpanded: true,
                        ),
                      )
                    ],
                  ),
                ),


                ///////////////DATE OF BIRTH///////////////
                Padding(
                  padding: EdgeInsets.fromLTRB(30,30,0,0),
                  child: Row(
                    children: <Widget>[
                      Text('Date of Birth',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: SizedBox(
                          width: 100.0,
                          height: 50.0,
                          child: Text('$dateOfBirth',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          )
                        ),
                      ),


                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: IconButton(
                          color: Colors.lightBlue[400],
                          icon: Icon(Icons.arrow_drop_down_circle),
                          iconSize: 30.0,
                          onPressed: ()
                          {
                            showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1990),
                                lastDate: DateTime(2022)
                            ).then((date)
                            {
                              setState(()
                              {
                                dateOfBirth= date;
                              });
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ),
                

                /////////////INSTITUTION///////////
                Padding(
                  padding: EdgeInsets.fromLTRB(0,30,0,0),
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
                        hintText: "Institution",
                      ),
                      onSubmitted: (String institution)
                      {
                        //verification code goes here
                      },
                    ),
                  ),
                ),
                
                /////////////////VERSION////////////////////
                Padding(
                  padding: EdgeInsets.fromLTRB(30,30,0,0),
                  child: Row(
                    children: <Widget>[
                      Text('Version',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 50, 0),
                      ),

                      SizedBox(
                        width: 100.0,
                        height: 50.0,
                        child: DropdownButton<String>(
                          items: version.map((String dropDownStringItem)
                          {
                            return DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: Text(dropDownStringItem),
                            );
                          }).toList(),

                          onChanged: (String newValue)
                          {
                            setState(() {
                              selectedVersion=newValue;
                              print(selectedVersion);
                            });
                          },
                          value: selectedVersion,
                          isExpanded: true,
                        ),
                      ),
                    ],
                  ),
                ),


                //////////////EXAM TYPE/////////////////
                Padding(
                  padding: EdgeInsets.fromLTRB(30,30,0,0),
                  child: Row(
                    children: <Widget>[
                      Text('Exam Type',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 50, 0),
                      ),

                      SizedBox(
                        width: 100.0,
                        height: 50.0,
                        child: DropdownButton<String>(
                          items: examType.map((String dropDownStringItem)
                          {
                            return DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: Text(dropDownStringItem),
                            );
                          }).toList(),

                          onChanged: (String newValue)
                          {
                            setState(() {
                              selectedExamType=newValue;
                              print(selectedExamType);
                            });
                          },
                          value: selectedExamType,
                          isExpanded: true,
                        ),
                      ),
                    ],
                  ),
                ),

                ///////////EXAM YEAR/////////////
               /* Padding(
                  padding: EdgeInsets.fromLTRB(30,20.0,0,20.0),
                  child: Row(
                    children: <Widget>[
                      Text('Exam Year',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: DropdownButton<String>(
                          items: examYear.map((String dropDownStringItem)
                          {
                            return DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: Text(dropDownStringItem),
                            );
                          }).toList(),

                          onChanged: (String newValue)
                          {
                            selectedExamYear=newValue;
                            print(selectedExamYear);
                          },
                          value: selectedExamYear,
                          isExpanded: true,
                        ),
                      ),

                    ],
                  ),
                ),*/


               /////////////STUDENT ID///////////////////
                      Padding(
                        padding: EdgeInsets.fromLTRB(0,30,0,0),
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
                              hintText: "Student ID",
                            ),
                          ),
                        ),
                      ),


                /////////////////REGISTRATION NO///////////////
                Padding(
                  padding: EdgeInsets.fromLTRB(0,30,0,0),
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
                        hintText: "Registration ID",
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
                  child: ButtonTheme(
                    minWidth: 150.0,
                    height: 50.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side: BorderSide.none,
                    ),
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        'Submit',
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

                Padding(
                  padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }

  void onClear()
  {
    setState(() {

    });
  }
}
