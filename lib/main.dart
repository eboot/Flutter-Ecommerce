import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_shop/components/horizontalListView.dart';
import 'package:flutter_shop/components/products.dart';

void main() {
  runApp(
    MaterialApp(
      home: Homepage(),
    ),
  );
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 5.0,
        indicatorBgPadding: 6.0,
        dotBgColor: Colors.white30,
        dotColor: Colors.black,
      ),
    );

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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            //Header
            UserAccountsDrawerHeader(
              accountName: Text('John Smith'),
              accountEmail: Text('example@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.deepPurple,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.red[300],
              ),
            ),
            //body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite, color: Colors.red[300]),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.blue[300]),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.info, color: Colors.green[300]),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          imageCarousel,
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
            child: Text(
              'Shop by Category',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),

          //CATEGORIES HORIZONTAL LIST VIEW
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
            child: HorizontalList(),
          ),

          //PRODUCTS GRID VIEW
          Container(
            height: 320.0,
            child: Products(),
          ),
        ],
      ),
    );
  }
}
