import 'package:flutter/material.dart';

class Guide1 extends StatelessWidget {

  Widget get topSection => Container(
    height: 120.0,
    padding: EdgeInsets.only(bottom: 15.0),
    child: Stack(

      children: <Widget>[
        Container(
          alignment: Alignment.bottomRight,
          margin: EdgeInsets.only(right: 40.0),
          child: Text("Skip"),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.album, size: 15.0,),
              Icon(Icons.adjust, size: 15.0,),
              Icon(Icons.adjust, size: 15.0,),
            ],
          ),
        ),
      ],
    ),
  );

  Widget get middlsectoin => Expanded(
    child: Container(
      child: Column(
        children: <Widget>[

          ImagePlus(),
          SizedBox(height: 20.0,),
          Text(
            "Add Trip",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            alignment: Alignment.topCenter,
            width: 300.0,
            child: Text(
              "Easy add your create your trip, and let people know where you're heading",
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.5,
                fontSize: 15.0,
                color: Colors.grey,
              ),
            ),
          ),
          // Add trip
          //description
        ],
      ),
    ),
  );

  Widget get bottomsection => Container(
    height: 80.0,
    alignment: Alignment.topCenter,
    child: RaisedButton(
      elevation: 0.0,
      child: Text("Next", style: TextStyle(color: Colors.blueAccent),),
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.blueAccent)
        ),
        onPressed: (){}
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,

        child: Column(
          children: <Widget>[
            //Top Section
            topSection,
            //Middle Section
            middlsectoin,
            //bottom section
            bottomsection
          ],
        ),
      ),
    );
  }
}

class ImagePlus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 435.0,
      width: 370.0,
      alignment: Alignment.center,
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: new AssetImage('assets/guidimg1.png'),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 5.0),
            child: Icon(Icons.add_circle, size: 40.0, color: Colors.blue,),
          )

        ],
      ),
    );
  }
}
