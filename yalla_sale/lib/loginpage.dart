import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
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
                    padding: EdgeInsets.only(top: 100),

                  ),
                  SizedBox(
                    width:MediaQuery.of(context).size.width ,
//              height:MediaQuery.of(context).size.height ,

                    child: Row(
                      children :<Widget>[
                        Card(

                          child: SizedBox(
                            //width: 430,
                            // height: 500,
                            child: Column(
                              children :<Widget>[
                                Card(

                                    margin: EdgeInsets.fromLTRB(10,20, 10, 5),
                                    //color: Colors.lime,
                                    child:SizedBox(

                                      height: 70,width: 300,
                                      child: TextFormField(

                                        maxLines: 1, maxLength: 20,
                                        cursorColor: Colors.lime,
                                        autofocus: true,
                                        style: TextStyle(
                                          decorationColor: Colors.limeAccent,
                                          wordSpacing: .5,  fontSize: 15, // height: 20,
                                          fontStyle: FontStyle.italic,
                                        ),

                                        keyboardType: TextInputType.visiblePassword,
                                        textInputAction: TextInputAction.next,
                                        //obscureText: true,

                                        decoration: InputDecoration(

                                          //hintText: "Enter Password" ,
                                          prefixIcon: Icon(Icons.account_circle),
                                          prefixText: "Email :- ",
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
                                Card(
                                    margin: EdgeInsets.fromLTRB(10,20, 10, 5),
                                    //color: Colors.lime,
                                    child: SizedBox(
                                      height: 70,width: 300,
                                      child: TextFormField(
                                        maxLines: 1, maxLength: 20,
                                        cursorColor: Colors.lime,
                                        autofocus: true,
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
                                          prefixText: "Password :- ",
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

                                Card(
                                    margin: EdgeInsets.fromLTRB(10,20, 10,10),
                                    //color: Colors.lime,
                                    child: SizedBox(
                                        height: 30,width: 100,
                                        child:FlatButton(

                                          onPressed: (){
                                            Navigator.of(context)
                                                .push(
                                                MaterialPageRoute(
                                                    builder: (context) => MyApp()
                                                )
                                            );
                                          },
                                          //label: Text('Done'),
                                          child: Text("Log In"),

                                        )

                                    )

                                ),
                                Card(
                                  margin: EdgeInsets.fromLTRB(10,20, 10,10),
                                  //color: Colors.lime,
                                  child: SizedBox(

                                      height:45,width: 250,
                                      child:CheckboxListTile(

                                        value: check,
                                        onChanged: onchange,
                                        checkColor:Colors.black,
                                        activeColor:Colors.lime ,
                                        title: Text("Remember Me"),

                                      )

                                  ),
                                ),
                                /*Card(
                                  margin: EdgeInsets.fromLTRB(10,20, 10,10),color: Colors.lime,
                                  child: SizedBox(
                                      height: 30,width: 120,
                                      child:FlatButton(

                                        onPressed: done,
                                        //label: Text('Done'),
                                        child: Text("Registration"),
                                      )
                                  )
                              ),*/
                                Card(
                                    child: SizedBox(
                                      //height: 30,width: 100,
                                      child: Divider(
                                        height: 2,
                                        color: Colors.red,
                                        indent: 300,
                                        thickness: 50,
                                      ),
                                    )

                                ),
                                Card(
                                    margin: EdgeInsets.fromLTRB(10,20, 10,10),
                                    //color: Colors.lime,

                                    child: SizedBox(
                                      //height: 30,width: 100,
                                      child: Text("Designed by YllaSale"),
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
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
    );
  }
}