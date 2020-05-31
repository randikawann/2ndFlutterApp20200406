import 'package:flutter/material.dart';

class HorisontalTravelImage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          TravelPlace(img:"travelphoto1", caption:"Ball"),
          TravelPlace(img:"travelphoto2", caption:"Japan"),
          TravelPlace(img:"bannerbot3", caption:"India"),
        ],
      ),
    );
  }

}

class TravelPlace extends StatelessWidget {

  String img;
  String caption;


  TravelPlace({this.img, this.caption});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 150.0,
        child: Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.only(left: 14.0, bottom: 16.0),
          child: Text("$caption", style: TextStyle(fontSize: 14.0, color: Colors.white),),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: new AssetImage('assets/travel/$img.png'),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
      ) ,
    );
  }
}
