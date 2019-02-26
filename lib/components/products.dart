import 'package:flutter/material.dart';
import 'package:flutter_shop/pages/productDetails.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      'name': 'Blazer Black',
      'picture': 'images/products/blazer1.jpeg',
      'old_price': 59.99,
      'price': 29.99
    },
    {
      'name': 'Blazer Women',
      'picture': 'images/products/blazer2.jpeg',
      'old_price': 100,
      'price': 50
    },
    {
      'name': 'Red Dress',
      'picture': 'images/products/dress1.jpeg',
      'old_price': 99,
      'price': 49
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: product_list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return SingleProduct(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_new_price: product_list[index]['price'],
          );
        },
      ),
    );
  }
}

class SingleProduct extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_new_price;

  // CONSTRUCTOR
  SingleProduct(
      {this.prod_name,
      this.prod_picture,
      this.prod_new_price,
      this.prod_old_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductDetails(
                          prod_detail_name: prod_name,
                          prod_detail_new_price: prod_new_price,
                          prod_detail_old_price: prod_old_price,
                          prod_detail_picture: prod_picture,
                        ),
                  ),
                ),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    prod_name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    "\$$prod_new_price",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                    ),
                  ),
                  subtitle: Text(
                    "\$$prod_old_price",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
              ),
              child: Image.asset(
                prod_picture,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
