import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'MyHomePage.dart';
import 'Registration.dart';
import 'model/users.dart';
import 'dart:async';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return stateHome();
  }
}

class stateHome extends State<Home>
{
  var check =true; String note;
  String Upass="",Uemail="";
  void onchange(val){
    print(val);
    setState(() {
      check=val;
    });
  }
  void chemail(val){
    //print(val);
    setState(() {
      Uemail=val;
    });
  }
  void chpass(val){
    //print(val);
    setState(() {
      Upass=val;
    });
  }


  void done() async{
    // user().inert();
    UsData().find(Uemail,Upass);
    print(UsData().islogin);
    if(UsData().islogin==true)
      {
        Navigator.push(context,MaterialPageRoute(builder: (context)=> MyHomePage()) );
      }
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
                  padding: EdgeInsets.only(top: 50),

                ),
                SizedBox(
                  width:MediaQuery.of(context).size.width ,
//              height:MediaQuery.of(context).size.height ,

                  child: Row(
                    children :<Widget>[
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27.0)
                        ),
                        elevation: 20,

                        child: SizedBox(
                          //width: 430,
                          // height: 500,
                          child: Column(
                            children :<Widget>[
                             Padding(

                                  padding: EdgeInsets.fromLTRB(10,20, 10, 5),
                                 //color: Colors.lime,
                                  child:SizedBox(

                                    height: 70,width: 300,
                                    child: TextFormField(

                                      maxLines: 1, maxLength: 20,
                                      cursorColor: Colors.black,
                                      autofocus: false,
                                      style: TextStyle(
                                        decorationColor: Colors.limeAccent,
                                        wordSpacing: .5,  fontSize: 15, // height: 20,
                                        fontStyle: FontStyle.italic,
                                      ),
                                      onChanged: chemail,
                                      keyboardType: TextInputType.visiblePassword,
                                      textInputAction: TextInputAction.next,
                                      //obscureText: true,

                                      decoration: InputDecoration(

                                        //hintText: "Enter Password" ,
                                        prefixIcon: Icon(Icons.account_circle),
                                        //prefixText: "Email : ",
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.amber,
                                            width: 02.0,
                                            style: BorderStyle.solid,
                                          ),
                                          borderRadius: BorderRadius.circular(50.0),
                                        ),
                                        labelText:  "Enter Email",
                                      ),
                                    ),
                                  )

                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(10,20, 10, 5),

                                  //color: Colors.lime,
                                  child: SizedBox(
                                    height: 70,width: 300,
                                    child: TextFormField(
                                      onChanged: chpass,
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
                                  padding: EdgeInsets.fromLTRB(10,20, 10,10),
                                  //color: Colors.lime,
                                  child: SizedBox(
                                      height: 30,width: 100,
                                      child:FlatButton(
                                        onPressed:
                                        done,
                                        //label: Text('Done'),
                                        child: Text("Log In"),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(16.0)
                                        ),
                                        color: Colors.green,
                                      )

                                  )

                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(10,20, 10,10),
                                //color: Colors.lime,
                                  child: SizedBox(

                                      height:45,width: 210,
                                      child:CheckboxListTile(

                                        value: check,
                                        onChanged: onchange,
                                        checkColor:Colors.black,
                                        activeColor:Colors.green ,
                                        title: Text("Remember Me"),

                                  )

                              ),
                              ),

                              Padding(
                                  padding: EdgeInsets.fromLTRB(10,20, 10,10),//color: Colors.lime,
                                  child: SizedBox(
                                      height: 30,width: 120,
                                      child:FlatButton(
                                        color: Colors.lightGreen,
                                        onPressed: (){    Navigator.push(context,MaterialPageRoute(builder: (context)=>Registration()) );
                                        },
                                        //label: Text('Done'),
                                        child: Text("registration"),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(16.0)
                                        ),
                                      )
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
        title: Text("Log In"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
    );
  }
}