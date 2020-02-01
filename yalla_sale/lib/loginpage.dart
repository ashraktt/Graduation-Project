import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'MyHomePage.dart';
import 'colors.dart';
import 'style.dart';
import 'MyHomePage.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage>
{
  var check  = true;
  void onchange(val){
    print(val);
    setState(() {
      check=val;
    });
  }
  void done(){
    print("done");
  }
  Container fryoTextInput(String hintText,
      {onTap, onChanged, onEditingComplete, onSubmitted}) {
    return Container(
      margin: EdgeInsets.only(top: 13),
      child: TextField(
        onTap: onTap,
        onChanged: onChanged,
        onEditingComplete: onEditingComplete,
        onSubmitted: onSubmitted,
        cursorColor: primaryColor,
        style: inputFieldTextStyle,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: inputFieldHintTextStyle,
            focusedBorder: inputFieldFocusedBorderStyle,
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            border: inputFieldDefaultBorderStyle),
      ),
    );
  }
        Container fryoPasswordInput(String hintText,
      {onTap, onChanged, onEditingComplete, onSubmitted}) {
    return Container(
      margin: EdgeInsets.only(top: 13),
      child: TextField(
        onTap: onTap,
        onChanged: onChanged,
        onEditingComplete: onEditingComplete,
        onSubmitted: onSubmitted,
        obscureText: true,
        cursorColor: primaryColor,
        style: inputFieldHintPaswordTextStyle,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: inputFieldHintPaswordTextStyle,
            focusedBorder: inputFieldFocusedBorderStyle,
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            border: inputFieldDefaultBorderStyle),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: white,
          title: Text('Sign In',
              style: TextStyle(
                  color: Colors.grey, fontFamily: 'Poppins', fontSize: 15)),
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                // Navigator.of(context).pushReplacementNamed('/signup');
                Navigator.pushNamed(context,"MyHomePage");

              },
              child: Text('Sign Up', style: contrastText),
            )
          ],
        ),
        body: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 18, right: 18),
              child: Stack(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Welcome Back!', style: h3),
                      Text('Howdy, let\'s authenticate', style: taglineText),
                      fryoTextInput('Username'),
                      fryoPasswordInput('Password'),
                      FlatButton(
                        onPressed: () {},
                        child: Text('Forgot Password?', style: contrastTextBold),
                      )
                    ],
                  ),
                  Positioned(
                    bottom: 15,
                    right: -15,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>MyHomePage()) );
                      },
                      color: primaryColor,
                      padding: EdgeInsets.all(13),
                      shape: CircleBorder(),
                      child: Icon(Icons.arrow_forward, color: white),
                    ),
                  )
                ],
              ),
              height: 245,

              width: double.infinity,
              decoration: authPlateDecoration,
            ),
          ],
        )
    );
  }
}