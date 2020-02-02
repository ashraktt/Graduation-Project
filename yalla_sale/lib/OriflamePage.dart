import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OriflamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('ORIFLAME'),
      ),
      body: ListView.builder(
          itemCount: 12,
          itemBuilder: (context ,index ){
            return Padding (
              padding: EdgeInsets.symmetric(vertical: 8.0 ,horizontal: 16.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0)
                ),
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      child:  Image.asset("images/oriflame/$index.jpg"),
                      borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                        bottomLeft:Radius.circular(16.0),
                        bottomRight: Radius.circular(16.0),
                      ),
                    ),
                    Text ("Page : ${index+1}")
                  ],
                ),
              ),
            );
          },

      ) ,
    );
  }
}
