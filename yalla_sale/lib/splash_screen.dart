import 'dart:async';
import 'package:flutter/material.dart';
import 'loginpage.dart';
class splash_screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Splash_ScreenState();
  }

}

class _Splash_ScreenState extends State<splash_screen>{
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }
  startTimer () async {
   var duration = Duration (seconds: 4);
   return Timer (duration,route);
  }
  route(){
   Navigator.pushReplacement(context, MaterialPageRoute(
     builder: (context) => LoginPage()
   ));
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center (
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset("images/project_logo.png"),
            ),
            Padding(padding: EdgeInsets.only(top: 20),),
            CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeWidth: 5,
            )
          ],
        ),
      ),
    );
  }

}