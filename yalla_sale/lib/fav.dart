import 'package:flutter/material.dart';
class MyFav extends StatelessWidget {
  Widget card ;
  MyFav( this.card);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fav',
      theme: ThemeData.dark(),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: Fav( card ),
    );
  }
}

class Fav extends StatefulWidget {
  Widget card ;
  Fav(this. card);
  @override
  _FavState createState() => _FavState(card);
}

class _FavState extends State<Fav> {
   Widget card ;
  _FavState(this. card);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:AppBar(
      title: Text('Fav'),
    ) ,
      body: Column(
        children: <Widget>[
          card ,
        ],
      ),
    );
  }
}
