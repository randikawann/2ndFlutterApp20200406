import 'package:flutter/material.dart';

class HorisontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: Container(
        width: 120.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Category(img_location: 'assets/cats/tshirt.png', img_caption: 'Shirts',),
            Category(img_location: 'assets/cats/shoe.png', img_caption: 'Shoes',),
            Category(img_location: 'assets/cats/jeans.png', img_caption: 'Jeans',),
            Category(img_location: 'assets/cats/informal.png', img_caption: 'Informal',),
            Category(img_location: 'assets/cats/formal.png', img_caption: 'Formal',),
            Category(img_location: 'assets/cats/dress.png', img_caption: 'Dress',),
            Category(img_location: 'assets/cats/accessories.png', img_caption: 'Accessories',),
          ],
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {

  String img_location;
  String img_caption;

  Category({this.img_location, this.img_caption});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(onTap: (){},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(img_location, width: 100.0, height: 80.0,),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(img_caption),
            )
          ),
        ),

      ),
    );
  }
}
