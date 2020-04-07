import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var productsOnCart = [
    {
      'name': 'Blazer',
      'picture': 'assets/products/blazer1.jpeg',
      'price': 85,
      'size': 'M',
      'color': 'Red',
      'quantity': 1,
    },
    {
      'name': 'Red Dress',
      'picture': 'assets/products/dress1.jpeg',
      'price': 90,
      'size': 'L',
      'color': 'Blue',
      'quantity': 2,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
        return SingleCartProduct(
          cart_prod_name: productsOnCart[index]['name'],
          cart_prod_picture: productsOnCart[index]['picture'],
          cart_prod_price: productsOnCart[index]['price'],
          cart_prod_size: productsOnCart[index]['size'],
          cart_prod_color: productsOnCart[index]['color'],
          cart_prod_qty: productsOnCart[index]['quantity'],
        );
      },
    );
  }
}

class SingleCartProduct extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  SingleCartProduct(
      {this.cart_prod_name,
      this.cart_prod_picture,
      this.cart_prod_price,
      this.cart_prod_size,
      this.cart_prod_color,
      this.cart_prod_qty});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(
          cart_prod_picture,
          width: 80.0,
          height: 80.0,
        ),
        title: Text(cart_prod_name),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Text("Size: "),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    cart_prod_size,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Text("Color: "),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    cart_prod_color,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                  '\$${cart_prod_price}',
                style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        trailing: Column(
          children: <Widget>[
//            TODO: need to added up and bollom arrow to this, also functioning those value
//            IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){},),
            Text('$cart_prod_qty',textAlign: TextAlign.center,),
//            IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){},),
          ],
        ),
      ),
    );
  }
}
