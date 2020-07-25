import 'package:flutter/material.dart';
import'package:carousel_pro/carousel_pro.dart';
import 'package:register/components/horizontal_listview.dart';
import 'package:register/pages/cart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    Widget image_carousel = new Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage(''),
          AssetImage(''),
          AssetImage(''),
          AssetImage(''),
          AssetImage(''),
          AssetImage(''),
        ],
        autoplay: false,
      //  animationCurve: Curves.fastOutSlowIn,
        //animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
      ),
    );
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          title: Text('BOOK SHOP'),
          backgroundColor: Colors.red,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                color: Colors.white,
                onPressed: () {}),
            IconButton(
                icon: Icon(Icons.shopping_cart),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
                }),
          ],
        ),

        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              //header
              UserAccountsDrawerHeader(
                accountName: Text('Chamaka Athukorala'),
                accountEmail: Text('chamakamedasa@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: BoxDecoration(color: Colors.red),
              ),
              //body
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Home Page'),
                  leading: Icon(
                    Icons.home,
                    color: Colors.red,
                  ),
                ),
              ),

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('My Account'),
                  leading: Icon(
                    Icons.person,
                    color: Colors.red,
                  ),
                ),
              ),

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('My Orders'),
                  leading: Icon(
                    Icons.shopping_basket,
                    color: Colors.red,
                  ),
                ),
              ),

              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
                },
                child: ListTile(
                  title: Text('Shopping Cart'),
                  leading: Icon(
                    Icons.shopping_cart,
                    color: Colors.red,
                  ),
                ),
              ),

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Favorites'),
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Settings'),
                  leading: Icon(
                    Icons.settings,
                    color: Colors.blue,
                  ),
                ),
              ),

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('About'),
                  leading: Icon(
                    Icons.help,
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
        ),

        body: Column(
          children: <Widget>[
            //image corasel begins here
          //  image_carousel,
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text('Catogories')),
            ),
            //horizontal list view begins here
            HorizontalList(),
          ],
        ),


    );
  }
}