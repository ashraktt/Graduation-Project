import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:grafpix/icons.dart';
import 'package:grafpix/pixloaders/pix_loader.dart';
import 'package:grafpix/pixbuttons/radial.dart';

import 'MyHomePage.dart';
import 'package:yalla_sale/MyHomePage.dart';
import 'model/users.dart';
import 'dart:async';

class Registration extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return stateRegistration();
  }
}
//                        Navigator.push(context,MaterialPageRoute(builder: (context)=>MyHomePage()) );
class stateRegistration extends State<Registration>
{
  var check =true; String note; String Gender='Male',Uname="",Upass1="",Upass2="",Uemail="";

  bool validation(){
    bool check=true;
    if(Uname==""||Uname.length<=7)
      check= false;
    if(Uemail=="")
      check= false;
    if(Upass1==""||Upass1.length<=7)
      check= false;
    if(Upass2==""||Upass2.length<=7)
      check= false;
    return check;
  }

  void done() async{

    if(validation()==true){
    int add=await UsData().create({
      'Uname':Uname,
      'Pass':Upass1,
      'Gender':Gender,
      'Uemail':Uemail,
    });
    print(add);
    Navigator.push(context,MaterialPageRoute(builder: (context)=> MyHomePage()) );
    }
    else{
      print("error");
    }

  }

  void onchange(val){
    print(val);
    setState(() {
      check=val;
    });
  }
  void Gnderchange(val){
    print(val);
    setState(() {
      Gender=val;
    });
  }
  void ChUname(val){
    //print(val);
    setState(() {
      Uname=val;
    });
  }
  void ChUmail(val){
    //print(val);
    setState(() {
      Uemail=val;
    });
  }

    void ChUpass2(val){
      //print(val);
      setState(() {
        Upass2=val;
      });}

      void ChUpass1(val) {
        //print(val);
        setState(() {
          Upass1 = val;
        });
      }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(

          children: <Widget>[
            Container(
              width:MediaQuery.of(context).size.width ,
              height:755,

              child:Column(
                children :<Widget>[
                  Padding(
                    child: Image.asset("images/project_logo.png",width: 150,height: 100,),
                    padding: EdgeInsets.only(top: 30),

                  ),
                  SizedBox(
                    width:MediaQuery.of(context).size.width ,
//              height:MediaQuery.of(context).size.height ,

                    child: Row(
                      children :<Widget>[
                        Card(
                          color:Colors.white,
                          elevation: 20,
                          child: SizedBox(
                            //width: 430,
                            // height: 500,
                            child: Column(
                              children :<Widget>[
                                Padding(

                                    padding: EdgeInsets.all(20),
                                    //color: Colors.lime,
                                    child:SizedBox(

                                      height: 50,width: 300,
                                      child: TextFormField(

                                        maxLines: 1, maxLength: 20,
                                        cursorColor: Colors.lightGreen,
                                        autofocus: false,
                                        style: TextStyle(
                                          decorationColor: Colors.limeAccent,
                                          wordSpacing: .5,  fontSize: 15, // height: 20,
                                          fontStyle: FontStyle.italic,

                                        ),
                                        onChanged: ChUname,
                                        keyboardType: TextInputType.visiblePassword,
                                        textInputAction: TextInputAction.next,
                                        //obscureText: true,

                                        decoration: InputDecoration(

                                          //hintText: "Enter Password" ,
                                          prefixIcon: Icon(Icons.account_circle),
                                          //prefixText: "Name : ",
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.amber,
                                              width: 02.0,
                                              style: BorderStyle.solid,
                                            ),
                                            borderRadius: BorderRadius.circular(50.0),
                                          ),
                                          labelText:  "Enter Name",
                                        ),
                                      ),
                                    )

                                ),
                                Padding(

                                    padding: EdgeInsets.fromLTRB(10,10, 10, 5),
                                    //color: Colors.lime,
                                    child:SizedBox(

                                      height: 50,width: 300,
                                      child: TextFormField(

                                        maxLines: 1, maxLength: 20,
                                        cursorColor: Colors.black,
                                        autofocus: false,
                                        style: TextStyle(
                                          decorationColor: Colors.limeAccent,
                                          wordSpacing: .5,  fontSize: 15, // height: 20,
                                          fontStyle: FontStyle.italic,
                                        ),
                                        onChanged: ChUmail,
                                        keyboardType: TextInputType.visiblePassword,
                                        textInputAction: TextInputAction.next,
                                        //obscureText: true,

                                        decoration: InputDecoration(

                                          //hintText: "Enter Password" ,
                                          prefixIcon: Icon(Icons.account_circle),
                                         // prefixText: "Email : ",
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.amber,
                                              width: 02.0,
                                              style: BorderStyle.solid,
                                            ),
                                            borderRadius: BorderRadius.circular(50.0),
                                          ),
                                          labelText:  "Enter Email : ",
                                        ),
                                      ),
                                    )

                                ),
                                Padding(

                                    padding: EdgeInsets.fromLTRB(10,10, 10, 5),
                                    //color: Colors.lime,
                                    child: SizedBox(
                                      height: 50,width: 300,
                                      child: TextFormField(
                                        onChanged: ChUpass1,
                                        maxLines: 1, maxLength: 20,
                                        cursorColor: Colors.black,
                                        //autofocus: true,
                                        style: TextStyle(
                                          decorationColor: Colors.limeAccent,
                                          wordSpacing: .5,  fontSize: 15, // height: 20,
                                          fontStyle: FontStyle.italic,

                                        ),
                                        keyboardType: TextInputType.visiblePassword,
                                        textInputAction: TextInputAction.next,
                                        obscureText: true,
                                        decoration: InputDecoration(

                                          //hintText: "Enter Password" ,
                                          prefixIcon: Icon(Icons.lock_outline),
                                          //prefixText: "Password : ",
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.amber,
                                              width: 3.0,
                                              style: BorderStyle.solid,
                                            ),
                                            borderRadius: BorderRadius.circular(50.0),
                                          ),
                                          labelText:  "Enter Password",
                                        ),
                                      ),
                                    )

                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(10,10, 10, 5),
                                    //color: Colors.lime,
                                    child: SizedBox(
                                      height: 50,width: 300,
                                      child: TextFormField(
                                        onChanged: ChUpass2,
                                        maxLines: 1, maxLength: 20,
                                        cursorColor: Colors.black,
                                        autofocus: false,
                                        style: TextStyle(
                                          decorationColor: Colors.limeAccent,
                                          wordSpacing: .5,  fontSize: 15, // height: 20,
                                          fontStyle: FontStyle.italic,

                                        ),
                                        keyboardType: TextInputType.visiblePassword,
                                        textInputAction: TextInputAction.next,
                                        obscureText: false,
                                        decoration: InputDecoration(

                                          //hintText: "Enter Password" ,
                                          prefixIcon: Icon(Icons.lock_outline),
                                          //prefixText: "Confirm Password : ",
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.amber,
                                              width: 3.0,
                                              style: BorderStyle.solid,
                                            ),
                                            borderRadius: BorderRadius.circular(50.0),
                                          ),
                                          labelText:  "Confirm Password",
                                        ),
                                      ),
                                    )

                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10,10, 10,10),
                                  //color: Colors.lime,
                                  child: SizedBox(
                                      height:45,width: 85,
                                      child:DropdownButton<String>(
                                        value: Gender,
                                        onChanged: Gnderchange,
                                        hint: Text("Gender"),
                                        items: <String>['Male','Femail']
                                            .map<DropdownMenuItem<String>>((String value){
                                              return DropdownMenuItem<String>(
                                                child: Text(value),
                                                value: value,
                                              );
                                        }).toList()
                                      ,
                                      )

                                  ),
                                ),

                                Padding(
                                    padding: EdgeInsets.fromLTRB(10,10, 10,20),
                                    //color: Colors.lime,
                                    child: SizedBox(
                                        child:PixButton(
                                            icon: PixIcon.Text,
                                            radius: 30.0,
                                            iconSize: 25.0,
                                            iconColor: Colors.white,
                                            backgroundColor: Colors.green[500],
                                            shutter: 0.5,

                                            twinkles: true,
                                            onPress: done
                                        ),

                                    )

                                ),

                              ],
                            ),
                          ),
                          //color: Colors.lime,
                          margin: EdgeInsets.fromLTRB(40, 0/*it will change*/, 20, 100),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // color:Colors.green ,

            ),
          ]

      ),
      appBar: AppBar(
        title: Text("Registration"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
    );
  }
}