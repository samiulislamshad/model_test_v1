import 'package:flutter/material.dart';
import 'package:model_test/signupLayout.dart';
import 'package:model_test/loginLayout.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/services.dart';
//import 'package:percent_indicator/percent_indicator.dart';
//import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
//import "dart:async";

void main() {
  runApp(MaterialApp(
    //home: Home(),
    initialRoute: '/',
    routes: {
      '/': (context) =>
          loginLayout(), //usually the loading screen is supposed to be here as the data needs to be loaded first
      '/signupLayout': (context) => signUpLayout(),
      '/loginLayout': (context) => loginLayout(),
    },
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  double progressValue = 0.0;

  @override
  /*void initState() {  //assertion error
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  startTimer() async
  {
    var duration = Duration(minutes: 2);
    return Timer(duration, signUpScreen());
  }

  signUpScreen()
  {
    Navigator.pushNamed(context, '/loginLayout');
  }*/

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);

    //for transparent status bar
    /*SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
 ));*/
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
              child: SpinKitFoldingCube(
                color: Colors.blue[600],
                size: 50.0,
              ),
            ),

            /*Padding(
              padding: EdgeInsets.all(20.0),
            ),
            LiquidLinearProgressIndicator(
              backgroundColor: Colors.white,
              valueColor: AlwaysStoppedAnimation(Colors.blue[600]),
              borderColor: Colors.white,
              borderWidth: 5.0,
              borderRadius: 20.0,
              value: 0.25,

            ),*/

            /*Padding(
              padding: EdgeInsets.all(20.0),
              child: updateProgress(),
            ),*/ //used to show the loading progress precentage

            /*LinearPercentIndicator(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
              width: 250.0,
              lineHeight: 10.0,
              backgroundColor: Colors.orangeAccent,
              progressColor: Colors.blue,
              percent: 1.0,
              animation: true,
              animationDuration: 30,
              alignment: MainAxisAlignment.center,
            )*/
          ],
        ),
      ),
    );
  }

/*  Widget updateProgress()   //used to calculate the loading progress percentage
  {
    return Text((()
    {
      const second= const Duration(seconds: 2);
      new Timer.periodic(second, (Timer t)
      {
        setState(() {
          progressValue+=0.001;
          if (progressValue.toStringAsExponential(1)==1.0)
            {
              t.cancel();
              progressValue=0.0;
              return;
            }
        });
      });
      return 'Loading $progressValue%';
    }) ());

  }*/
}
