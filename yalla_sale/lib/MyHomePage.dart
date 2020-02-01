import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yalla Sale',
      theme: ThemeData.dark(),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: MyHomePage(),
    );
  }
}



class MyHomePage extends StatefulWidget {
 // MyHomePage({Key key, this.title}) : super(key: key);
 // final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Padding circleAvatar(String pic) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: CircleAvatar(
        backgroundImage: AssetImage("$pic"),
        radius: 40.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), title: Text("My Faviorate")),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), title: Text("Profile")),
            BottomNavigationBarItem(
                icon: Icon(Icons.refresh), title: Text("Refresh")),
          ],
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text("Yalla Sale"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                child: Row(
                  children: <Widget>[Icon(Icons.home), Text("Home")],
                ),
              ),
              Tab(
                child: Row(
                  children: <Widget>[Icon(Icons.shop_two), Text("Shop")],
                ),
              ),
              Tab(
                child: Row(
                  children: <Widget>[Icon(Icons.whatshot), Text("Best offers")],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
            children:<Widget>[
              SingleChildScrollView(
                child: Column(children: <Widget>[
                  Container(
                    height: 150.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.all(5.0),
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            circleAvatar("images/flower.jpg"),
                            Text("الكترونيات")
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            circleAvatar("images/flower.jpg"),
                            Text("اكسسوارات")
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            circleAvatar("images/flower.jpg"),
                            Text("ادوات مكتبية")
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            circleAvatar("images/flower.jpg"),
                            Text("مأكولات")
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            circleAvatar("images/flower.jpg"),
                            Text("عطور")
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            circleAvatar("images/flower.jpg"),
                            Text("ازياء")
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            circleAvatar("images/flower.jpg"),
                            Text("بقالة")
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            circleAvatar("images/flower.jpg"),
                            Text("ألعاب")
                          ],
                        )
                      ],
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        SizedBox(
                          height: 150,
                          width: 120,
                          child: Card(
                              elevation: 10.0,
                              child: Column(
                                  children:<Widget>[
                                    circleAvatar("images/project_logo.png"),
                                    Text("coomputer"),
                                    Text("12.500"),

                                  ]
                              )
                          ),
                        ),
                        SizedBox(
                          height: 150,
                          width: 120,
                          child: Card(
                              elevation: 10.0,
                              child: Column(
                                  children:<Widget>[
                                    circleAvatar("images/project_logo.png"),
                                    Text("coomputer"),
                                    Text("12.500"),

                                  ]
                              )
                          ),
                        ),
                        SizedBox(
                          height: 150,
                          width: 120,
                          child: Card(
                              elevation: 10.0,
                              child: Column(
                                  children:<Widget>[
                                    circleAvatar("images/project_logo.png"),
                                    Text("coomputer"),
                                    Text("12.500"),

                                  ]
                              )
                          ),
                        ),


                      ]
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        SizedBox(
                          height: 150,
                          width: 120,
                          child: Card(
                              elevation: 10.0,
                              child: Column(
                                  children:<Widget>[
                                    circleAvatar("images/project_logo.png"),
                                    Text("coomputer"),
                                    Text("12.500"),

                                  ]
                              )
                          ),
                        ),
                        SizedBox(
                          height: 150,
                          width: 120,
                          child: Card(
                              elevation: 10.0,
                              child: Column(
                                  children:<Widget>[
                                    circleAvatar("images/project_logo.png"),
                                    Text("coomputer"),
                                    Text("12.500"),

                                  ]
                              )
                          ),
                        ),
                        SizedBox(
                          height: 150,
                          width: 120,
                          child: Card(
                              elevation: 10.0,
                              child: Column(
                                  children:<Widget>[
                                    circleAvatar("images/project_logo.png"),
                                    Text("coomputer"),
                                    Text("12.500"),

                                  ]
                              )
                          ),
                        ),


                      ]
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        SizedBox(
                          height: 150,
                          width: 120,
                          child: Card(
                              elevation: 10.0,
                              child: Column(
                                  children:<Widget>[
                                    circleAvatar("images/project_logo.png"),
                                    Text("coomputer"),
                                    Text("12.500"),

                                  ]
                              )
                          ),
                        ),
                        SizedBox(
                          height: 150,
                          width: 120,
                          child: Card(
                              elevation: 10.0,
                              child: Column(
                                  children:<Widget>[
                                    circleAvatar("images/project_logo.png"),
                                    Text("coomputer"),
                                    Text("12.500"),

                                  ]
                              )
                          ),
                        ),
                        SizedBox(
                          height: 150,
                          width: 120,
                          child: Card(
                              elevation: 10.0,
                              child: Column(
                                  children:<Widget>[
                                    circleAvatar("images/project_logo.png"),
                                    Text("coomputer"),
                                    Text("12.500"),

                                  ]
                              )
                          ),
                        ),


                      ]
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        SizedBox(
                          height: 150,
                          width: 120,
                          child: Card(
                              elevation: 10.0,
                              child: Column(
                                  children:<Widget>[
                                    circleAvatar("images/project_logo.png"),
                                    Text("coomputer"),
                                    Text("12.500"),

                                  ]
                              )
                          ),
                        ),
                        SizedBox(
                          height: 150,
                          width: 120,
                          child: Card(
                              elevation: 10.0,
                              child: Column(
                                  children:<Widget>[
                                    circleAvatar("images/project_logo.png"),
                                    Text("coomputer"),
                                    Text("12.500"),

                                  ]
                              )
                          ),
                        ),
                        SizedBox(
                          height: 150,
                          width: 120,
                          child: Card(
                              elevation: 10.0,
                              child: Column(
                                  children:<Widget>[
                                    circleAvatar("images/project_logo.png"),
                                    Text("coomputer"),
                                    Text("12.500"),

                                  ]
                              )
                          ),
                        ),


                      ]
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        SizedBox(
                          height: 150,
                          width: 120,
                          child: Card(
                              elevation: 10.0,
                              child: Column(
                                  children:<Widget>[
                                    circleAvatar("images/project_logo.png"),
                                    Text("coomputer"),
                                    Text("12.500"),

                                  ]
                              )
                          ),
                        ),
                        SizedBox(
                          height: 150,
                          width: 120,
                          child: Card(
                              elevation: 10.0,
                              child: Column(
                                  children:<Widget>[
                                    circleAvatar("images/project_logo.png"),
                                    Text("coomputer"),
                                    Text("12.500"),

                                  ]
                              )
                          ),
                        ),
                        SizedBox(
                          height: 150,
                          width: 120,
                          child: Card(
                              elevation: 10.0,
                              child: Column(
                                  children:<Widget>[
                                    circleAvatar("images/project_logo.png"),
                                    Text("coomputer"),
                                    Text("12.500"),

                                  ]
                              )
                          ),
                        ),


                      ]
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        SizedBox(
                          height: 150,
                          width: 120,
                          child: Card(
                              elevation: 10.0,
                              child: Column(
                                  children:<Widget>[
                                    circleAvatar("images/project_logo.png"),
                                    Text("coomputer"),
                                    Text("12.500"),

                                  ]
                              )
                          ),
                        ),
                        SizedBox(
                          height: 150,
                          width: 120,
                          child: Card(
                              elevation: 10.0,
                              child: Column(
                                  children:<Widget>[
                                    circleAvatar("images/project_logo.png"),
                                    Text("coomputer"),
                                    Text("12.500"),

                                  ]
                              )
                          ),
                        ),
                        SizedBox(
                          height: 150,
                          width: 120,
                          child: Card(
                              elevation: 10.0,
                              child: Column(
                                  children:<Widget>[
                                    circleAvatar("images/project_logo.png"),
                                    Text("coomputer"),
                                    Text("12.500"),

                                  ]
                              )
                          ),
                        ),


                      ]
                  ),
                ]),
              ),
              GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 16.0 / 20.0,
                children: <Widget>[
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset("images/project_logo.png",),
                        Text("احلى مسا عليك"),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset("images/project_logo.png",),
                        Text("احلى مسا عليك"),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset("images/project_logo.png",),
                        Text("احلى مسا عليك"),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset("images/project_logo.png",),
                        Text("احلى مسا عليك"),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset("images/project_logo.png",),
                        Text("احلى مسا عليك"),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset("images/project_logo.png",),
                        Text("احلى مسا عليك"),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset("images/project_logo.png",),
                        Text("احلى مسا عليك"),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset("images/project_logo.png",),
                        Text("احلى مسا عليك"),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset("images/project_logo.png",),
                        Text("احلى مسا عليك"),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset("images/project_logo.png",),
                        Text("احلى مسا عليك"),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset("images/project_logo.png",),
                        Text("احلى مسا عليك"),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset("images/project_logo.png",),
                        Text("احلى مسا عليك"),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset("images/project_logo.png",),
                        Text("احلى مسا عليك"),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset("images/project_logo.png",),
                        Text("احلى مسا عليك"),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset("images/project_logo.png",),
                        Text("احلى مسا عليك"),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset("images/project_logo.png",),
                        Text("احلى مسا عليك"),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset("images/project_logo.png",),
                        Text("احلى مسا عليك"),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset("images/project_logo.png",),
                        Text("احلى مسا عليك"),
                      ],
                    ),
                  ),
                ],
              ),
              ListView(
                semanticChildCount: 2,
                children: <Widget>[
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset("images/project_logo.png")
                      ],
                    ),
                  )
                ],
              )
            ]
        ),
      ),
    );
  }
}


