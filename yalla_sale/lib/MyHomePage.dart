import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:yalla_sale/RagabPage.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'Product.dart';
import 'OriflamePage.dart';

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

  Widget foodItem(
      {double imgWidth, onLike, onTapped, bool isProductPage = false}) {
    return Container(
      width: 180,
      height: 180,
      // color: Colors.red,
      margin: EdgeInsets.only(left: 20),
      child: Stack(
        children: <Widget>[
          Container(
              width: 180,
              height: 180,
              child: RaisedButton(
                  color: Colors.white,
                  elevation: (isProductPage) ? 20 : 12,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  onPressed: onTapped,
                  child: Hero(
                      transitionOnUserGestures: true,
                      tag: "food.name",
                      child: Image.asset("images/project_logo.png",
                          width: (imgWidth != null) ? imgWidth : 100)))),
          Positioned(
            bottom: 70,
            right: 0,
            child: FlatButton(
              padding: EdgeInsets.all(20),
              shape: CircleBorder(),
              onPressed: onLike,
              child: Icon(
               Icons.favorite,
                color: Colors.red,
                size: 30,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: (!isProductPage)
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("food.name"),
                      Text("food.price"),
                    ],
                  )
                : Text(' '),
          ),
          Positioned(
              top: 10,
              left: 10,
              child: (true != null)
                  ? Container(
                      padding: EdgeInsets.only(
                          top: 5, left: 10, right: 10, bottom: 5),
                      decoration: BoxDecoration(
                          color: Colors.grey[600],
                          borderRadius: BorderRadius.circular(50)),
                      child: Text('-' +" 35 " + '%',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700)),
                    )
                  : SizedBox(width: 0))
        ],
      ),
    );
  }

  var _rating = 4.0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          drawer: Drawer(
            elevation: 15,
            child: ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Colors.greenAccent,
                          Colors.lightGreenAccent,
                        ],
                      ),
                      color: Colors.red[100],
                      image: DecorationImage(
                        image: AssetImage("images/project_logo.png"),
                      )),
                ),
                ListTile(
                  title: Text(
                    "Profile",
                    style: TextStyle(fontSize: 20),
                  ),
                  leading: Icon(
                    Icons.account_circle,
                    color: Colors.blue,
                    size: 35,
                  ),
                ),
                ListTile(
                  title: Text("Notification", style: TextStyle(fontSize: 20)),
                  leading: Icon(Icons.notifications,
                      color: Colors.orangeAccent, size: 35),
                ),
                ListTile(
                  title: Text("My Faviorate", style: TextStyle(fontSize: 20)),
                  leading: Icon(Icons.favorite, color: Colors.red, size: 35),
                ),
                ListTile(
                  title: Text("Rate App", style: TextStyle(fontSize: 20)),
                  leading: Icon(Icons.star,
                      color: Colors.yellowAccent[200], size: 35),
                ),
                ListTile(
                  title: Text("About", style: TextStyle(fontSize: 20)),
                  leading:
                      Icon(Icons.info_outline, color: Colors.black54, size: 35),
                ),
                ListTile(
                  title: Text("Join Us", style: TextStyle(fontSize: 20)),
                  leading: Icon(Icons.contact_mail,
                      color: Colors.green[500], size: 35),
                ),
                ListTile(
                  title: Text("Log Out", style: TextStyle(fontSize: 20)),
                  leading: Icon(Icons.lock, color: Colors.black, size: 35),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.refresh),
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
                    children: <Widget>[
                      Icon(Icons.whatshot),
                      Text("Best offers")
                    ],
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(children: <Widget>[
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
                          Text("الكل")
                        ],
                      ),
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
                            child: Column(children: <Widget>[
                              circleAvatar("images/project_logo.png"),
                              Text("coomputer"),
                              Text("12.500"),
                            ])),
                      ),
                      SizedBox(
                        height: 150,
                        width: 120,
                        child: Card(
                            elevation: 10.0,
                            child: Column(children: <Widget>[
                              circleAvatar("images/project_logo.png"),
                              Text("coomputer"),
                              Text("12.500"),
                            ])),
                      ),
                      SizedBox(
                        height: 150,
                        width: 120,
                        child: Card(
                            elevation: 10.0,
                            child: Column(children: <Widget>[
                              circleAvatar("images/project_logo.png"),
                              Text("coomputer"),
                              Text("12.500"),
                            ])),
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      SizedBox(
                        height: 150,
                        width: 120,
                        child: Card(
                            elevation: 10.0,
                            child: Column(children: <Widget>[
                              circleAvatar("images/project_logo.png"),
                              Text("coomputer"),
                              Text("12.500"),
                            ])),
                      ),
                      SizedBox(
                        height: 150,
                        width: 120,
                        child: Card(
                            elevation: 10.0,
                            child: Column(children: <Widget>[
                              circleAvatar("images/project_logo.png"),
                              Text("coomputer"),
                              Text("12.500"),
                            ])),
                      ),
                      SizedBox(
                        height: 150,
                        width: 120,
                        child: Card(
                            elevation: 10.0,
                            child: Column(children: <Widget>[
                              circleAvatar("images/project_logo.png"),
                              Text("coomputer"),
                              Text("12.500"),
                            ])),
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      SizedBox(
                        height: 150,
                        width: 120,
                        child: Card(
                            elevation: 10.0,
                            child: Column(children: <Widget>[
                              circleAvatar("images/project_logo.png"),
                              Text("coomputer"),
                              Text("12.500"),
                            ])),
                      ),
                      SizedBox(
                        height: 150,
                        width: 120,
                        child: Card(
                            elevation: 10.0,
                            child: Column(children: <Widget>[
                              circleAvatar("images/project_logo.png"),
                              Text("coomputer"),
                              Text("12.500"),
                            ])),
                      ),
                      SizedBox(
                        height: 150,
                        width: 120,
                        child: Card(
                            elevation: 10.0,
                            child: Column(children: <Widget>[
                              circleAvatar("images/project_logo.png"),
                              Text("coomputer"),
                              Text("12.500"),
                            ])),
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      SizedBox(
                        height: 150,
                        width: 120,
                        child: Card(
                            elevation: 10.0,
                            child: Column(children: <Widget>[
                              circleAvatar("images/project_logo.png"),
                              Text("coomputer"),
                              Text("12.500"),
                            ])),
                      ),
                      SizedBox(
                        height: 150,
                        width: 120,
                        child: Card(
                            elevation: 10.0,
                            child: Column(children: <Widget>[
                              circleAvatar("images/project_logo.png"),
                              Text("coomputer"),
                              Text("12.500"),
                            ])),
                      ),
                      SizedBox(
                        height: 150,
                        width: 120,
                        child: Card(
                            elevation: 10.0,
                            child: Column(children: <Widget>[
                              circleAvatar("images/project_logo.png"),
                              Text("coomputer"),
                              Text("12.500"),
                            ])),
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      SizedBox(
                        height: 150,
                        width: 120,
                        child: Card(
                            elevation: 10.0,
                            child: Column(children: <Widget>[
                              circleAvatar("images/project_logo.png"),
                              Text("coomputer"),
                              Text("12.500"),
                            ])),
                      ),
                      SizedBox(
                        height: 150,
                        width: 120,
                        child: Card(
                            elevation: 10.0,
                            child: Column(children: <Widget>[
                              circleAvatar("images/project_logo.png"),
                              Text("coomputer"),
                              Text("12.500"),
                            ])),
                      ),
                      SizedBox(
                        height: 150,
                        width: 120,
                        child: Card(
                            elevation: 10.0,
                            child: Column(children: <Widget>[
                              circleAvatar("images/project_logo.png"),
                              Text("coomputer"),
                              Text("12.500"),
                            ])),
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      SizedBox(
                        height: 150,
                        width: 120,
                        child: Card(
                            elevation: 10.0,
                            child: Column(children: <Widget>[
                              circleAvatar("images/project_logo.png"),
                              Text("coomputer"),
                              Text("12.500"),
                            ])),
                      ),
                      SizedBox(
                        height: 150,
                        width: 120,
                        child: Card(
                            elevation: 10.0,
                            child: Column(children: <Widget>[
                              circleAvatar("images/project_logo.png"),
                              Text("coomputer"),
                              Text("12.500"),
                            ])),
                      ),
                      SizedBox(
                        height: 150,
                        width: 120,
                        child: Card(
                            elevation: 10.0,
                            child: Column(children: <Widget>[
                              circleAvatar("images/project_logo.png"),
                              Text("coomputer"),
                              Text("12.500"),
                            ])),
                      ),
                    ]),
              ]),
            ),
            GridView.count(
              crossAxisCount: 3,
              childAspectRatio: 16.0 / 20.0,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => OriflamePage()));
                  },
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          "images/oriflame_logo.jpg",
                        ),
                        Text(
                          "ORIFLAME",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => RagabPage()));
                  },
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          "images/Awlad_Ragab_logo.jpg",
                        ),
                        Text(
                          "أولاد رجب",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "images/project_logo.png",
                      ),
                      Text("احلى مسا عليك"),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "images/project_logo.png",
                      ),
                      Text("احلى مسا عليك"),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "images/project_logo.png",
                      ),
                      Text("احلى مسا عليك"),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "images/project_logo.png",
                      ),
                      Text("احلى مسا عليك"),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "images/project_logo.png",
                      ),
                      Text("احلى مسا عليك"),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "images/project_logo.png",
                      ),
                      Text("احلى مسا عليك"),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "images/project_logo.png",
                      ),
                      Text("احلى مسا عليك"),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "images/project_logo.png",
                      ),
                      Text("احلى مسا عليك"),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "images/project_logo.png",
                      ),
                      Text("احلى مسا عليك"),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "images/project_logo.png",
                      ),
                      Text("احلى مسا عليك"),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "images/project_logo.png",
                      ),
                      Text("احلى مسا عليك"),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "images/project_logo.png",
                      ),
                      Text("احلى مسا عليك"),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "images/project_logo.png",
                      ),
                      Text("احلى مسا عليك"),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "images/project_logo.png",
                      ),
                      Text("احلى مسا عليك"),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "images/project_logo.png",
                      ),
                      Text("احلى مسا عليك"),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "images/project_logo.png",
                      ),
                      Text("احلى مسا عليك"),
                    ],
                  ),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Center(
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.only(top: 100, bottom: 100),
                            padding: EdgeInsets.only(top: 100, bottom: 50),
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text("غساله"),
                                Text("\$1500"),
                                Container(
                                  margin: EdgeInsets.only(top: 5, bottom: 20),
                                  child: SmoothStarRating(
                                    allowHalfRating: false,
                                    onRatingChanged: (v) {
                                      setState(() {
                                        _rating = v;
                                      });
                                    },
                                    starCount: 5,
                                    rating: _rating,
                                    size: 27.0,
                                    color: Colors.orange,
                                    borderColor: Colors.orange,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 15,
                                      spreadRadius: 5,
                                      color: Color.fromRGBO(0, 0, 0, .05))
                                ]),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 200,
                            height: 160,
                            child: foodItem(
                                isProductPage: true,
                                onTapped: () {},
                                imgWidth: 250,
                                onLike: () {}),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Divider(),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Center(
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.only(top: 100, bottom: 100),
                            padding: EdgeInsets.only(top: 100, bottom: 50),
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text("غساله"),
                                Text("\$1500"),
                                Container(
                                  margin: EdgeInsets.only(top: 5, bottom: 20),
                                  child: SmoothStarRating(
                                    allowHalfRating: false,
                                    onRatingChanged: (v) {
                                      setState(() {
                                        _rating = v;
                                      });
                                    },
                                    starCount: 5,
                                    rating: _rating,
                                    size: 27.0,
                                    color: Colors.orange,
                                    borderColor: Colors.orange,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 15,
                                      spreadRadius: 5,
                                      color: Color.fromRGBO(0, 0, 0, .05))
                                ]),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 200,
                            height: 160,
                            child: foodItem(
                                isProductPage: true,
                                onTapped: () {},
                                imgWidth: 250,
                                onLike: () {}),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Divider(),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Center(
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.only(top: 100, bottom: 100),
                            padding: EdgeInsets.only(top: 100, bottom: 50),
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text("غساله"),
                                Text("\$1500"),
                                Container(
                                  margin: EdgeInsets.only(top: 5, bottom: 20),
                                  child: SmoothStarRating(
                                    allowHalfRating: false,
                                    onRatingChanged: (v) {
                                      setState(() {
                                        _rating = v;
                                      });
                                    },
                                    starCount: 5,
                                    rating: _rating,
                                    size: 27.0,
                                    color: Colors.orange,
                                    borderColor: Colors.orange,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 15,
                                      spreadRadius: 5,
                                      color: Color.fromRGBO(0, 0, 0, .05))
                                ]),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 200,
                            height: 160,
                            child: foodItem(
                                isProductPage: true,
                                onTapped: () {},
                                imgWidth: 250,
                                onLike: () {}),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Divider(),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Center(
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.only(top: 100, bottom: 100),
                            padding: EdgeInsets.only(top: 100, bottom: 50),
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text("غساله"),
                                Text("\$1500"),
                                Container(
                                  margin: EdgeInsets.only(top: 5, bottom: 20),
                                  child: SmoothStarRating(
                                    allowHalfRating: false,
                                    onRatingChanged: (v) {
                                      setState(() {
                                        _rating = v;
                                      });
                                    },
                                    starCount: 5,
                                    rating: _rating,
                                    size: 27.0,
                                    color: Colors.orange,
                                    borderColor: Colors.orange,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 15,
                                      spreadRadius: 5,
                                      color: Color.fromRGBO(0, 0, 0, .05))
                                ]),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 200,
                            height: 160,
                            child: foodItem(
                                isProductPage: true,
                                onTapped: () {},
                                imgWidth: 250,
                                onLike: () {}),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Divider(),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Center(
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.only(top: 100, bottom: 100),
                            padding: EdgeInsets.only(top: 100, bottom: 50),
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text("غساله"),
                                Text("\$1500"),
                                Container(
                                  margin: EdgeInsets.only(top: 5, bottom: 20),
                                  child: SmoothStarRating(
                                    allowHalfRating: false,
                                    onRatingChanged: (v) {
                                      setState(() {
                                        _rating = v;
                                      });
                                    },
                                    starCount: 5,
                                    rating: _rating,
                                    size: 27.0,
                                    color: Colors.orange,
                                    borderColor: Colors.orange,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 15,
                                      spreadRadius: 5,
                                      color: Color.fromRGBO(0, 0, 0, .05))
                                ]),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 200,
                            height: 160,
                            child: foodItem(
                                isProductPage: true,
                                onTapped: () {},
                                imgWidth: 250,
                                onLike: () {}),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Divider(),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Center(
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.only(top: 100, bottom: 100),
                            padding: EdgeInsets.only(top: 100, bottom: 50),
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text("غساله"),
                                Text("\$1500"),
                                Container(
                                  margin: EdgeInsets.only(top: 5, bottom: 20),
                                  child: SmoothStarRating(
                                    allowHalfRating: false,
                                    onRatingChanged: (v) {
                                      setState(() {
                                        _rating = v;
                                      });
                                    },
                                    starCount: 5,
                                    rating: _rating,
                                    size: 27.0,
                                    color: Colors.orange,
                                    borderColor: Colors.orange,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 15,
                                      spreadRadius: 5,
                                      color: Color.fromRGBO(0, 0, 0, .05))
                                ]),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 200,
                            height: 160,
                            child: foodItem(
                                isProductPage: true,
                                onTapped: () {},
                                imgWidth: 250,
                                onLike: () {}),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Divider(),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Center(
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.only(top: 100, bottom: 100),
                            padding: EdgeInsets.only(top: 100, bottom: 50),
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text("غساله"),
                                Text("\$1500"),
                                Container(
                                  margin: EdgeInsets.only(top: 5, bottom: 20),
                                  child: SmoothStarRating(
                                    allowHalfRating: false,
                                    onRatingChanged: (v) {
                                      setState(() {
                                        _rating = v;
                                      });
                                    },
                                    starCount: 5,
                                    rating: _rating,
                                    size: 27.0,
                                    color: Colors.orange,
                                    borderColor: Colors.orange,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 15,
                                      spreadRadius: 5,
                                      color: Color.fromRGBO(0, 0, 0, .05))
                                ]),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 200,
                            height: 160,
                            child: foodItem(
                                isProductPage: true,
                                onTapped: () {},
                                imgWidth: 250,
                                onLike: () {}),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Divider(),


              ],
            )
          ])),
    );
  }
}
