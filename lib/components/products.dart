import 'package:flutter/material.dart';

import 'package:flutter_app_second/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      'name': 'Blazer',
      'picture': 'assets/products/blazer1.jpeg',
      'oldprice': 120,
      'price': 85,
    },
    {
      'name': 'Red Dress',
      'picture': 'assets/products/dress1.jpeg',
      'oldprice': 100,
      'price': 50,
    },
    {
      'name': 'Red Dress2',
      'picture': 'assets/products/hills1.jpeg',
      'oldprice': 100,
      'price': 50,
    },
    {
      'name': 'Red Dress3',
      'picture': 'assets/products/blazer2.jpeg',
      'oldprice': 100,
      'price': 50,
    },
    {
      'name': 'Red Dress4',
      'picture': 'assets/products/shoe1.jpg',
      'oldprice': 100,
      'price': 50,
    },
    {
      'name': 'Red Dress5',
      'picture': 'assets/products/skt1.jpeg',
      'oldprice': 100,
      'price': 50,
    },
    {
      'name': 'Red Dress6',
      'picture': 'assets/products/pants1.jpg',
      'oldprice': 100,
      'price': 50,
    },
    {
      'name': 'Red Dress7',
      'picture': 'assets/products/dress2.jpeg',
      'oldprice': 100,
      'price': 50,
    },
    {
      'name': 'Red Dress8',
      'picture': 'assets/products/hills2.jpeg',
      'oldprice': 100,
      'price': 50,
    },
    {
      'name': 'Red Dress9',
      'picture': 'assets/products/pants2.jpeg',
      'oldprice': 100,
      'price': 50,
    },
    {
      'name': 'Red Dress10',
      'picture': 'assets/products/skt2.jpeg',
      'oldprice': 100,
      'price': 50,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Single_Prod(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['oldprice'],
          prod_price: product_list[index]['price'],
        );
      },
    );
  }
}

class Single_Prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_Prod(
      {this.prod_name,
      this.prod_picture,
      this.prod_old_price,
      this.prod_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductDetails(
                //parsing value of product to the product details
                product_details_name : prod_name,
                product_details_new_price : prod_price,
                product_details_old_price : prod_old_price,
                product_details_picture : prod_picture,
              )));
            },
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    prod_name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  title: Text(
                    '\$$prod_price',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text(
                    '\$$prod_old_price',
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w800,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
              ),
              child: Image.asset(
                prod_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
