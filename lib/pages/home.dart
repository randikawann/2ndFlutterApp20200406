import 'package:flutter/material.dart';
import 'package:flutter_app_second/components/navigation_drawer.dart';
import 'package:flutter_app_second/components/image_carousel.dart';
import 'package:flutter_app_second/components/horizontal_listview.dart';
import 'package:flutter_app_second/components/products.dart';
import 'cart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text(
          'Shop App',
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Colors.white,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
            },
          ),
        ],
      ),
      drawer: NavigationDrawer(),
      body: ListView(
        children: <Widget>[
          ImageCarousel(),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Categories',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
          HorisontalListView(),
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 20.0, 20.0, 20.0),
            child: Text(
              'Recent Products',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
          Container(
            height: 320.0,
            child: Products(),
          ),
        ],
      ),
    );
  }
}
