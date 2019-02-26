import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final prod_detail_name;
  final prod_detail_picture;
  final prod_detail_old_price;
  final prod_detail_new_price;

  // CONSTRUCTOR
  ProductDetails(
      {this.prod_detail_name,
      this.prod_detail_new_price,
      this.prod_detail_old_price,
      this.prod_detail_picture});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        backgroundColor: Colors.red[300],
        title: Text('Flutter Shop'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.prod_detail_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.prod_detail_name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "\$${widget.prod_detail_old_price}",
                          style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "\$${widget.prod_detail_new_price}",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // ********** BUTTONS **********
          Row(
            children: <Widget>[
              // ********** SIZE BUTTON **********
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Size"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
              // ********** COLOR BUTTON **********
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Color"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
              // ********** QUANTITY BUTTON **********
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Qty"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // ********** BUY BUTTON **********
          Row(
            children: <Widget>[
              // ********** SIZE BUTTON **********
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red[400],
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text("Buy Now"),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart),
                color: Colors.red[300],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite),
                color: Colors.red[300],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
