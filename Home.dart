import 'package:flutter/material.dart';

import 'package:carousel_pro/carousel_pro.dart';

import '../packages/horizontal_listView.dart';
import '../packages/procuts.dart';
import '../pages/Cart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget imageCerousel = new Container(
    height: 250.0,
    child: Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/1.jpg'),
        AssetImage('images/2.jpg'),
        AssetImage('images/3.jpg'),
      ],
      autoplay: true,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(microseconds: 1000),
      indicatorBgPadding: 2.0,
    ),
  );
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: Text('Nadeesha  Stationary'),
      actions: <Widget>[
        new IconButton(icon: Icon(Icons.search,color: Colors.white) , onPressed: null, ),
        new IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white) , onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>new Cart()));}, ),
        
      ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(accountName: Text("Navod") ,accountEmail: Text("Navoddinidu@gmail.com"),
            currentAccountPicture: GestureDetector(child: new CircleAvatar(backgroundColor: Colors.amber,child: Icon(Icons.person),)
            
            ),
            decoration: new BoxDecoration(color:Colors.red),
            ),
            //body
            InkWell(
                          onTap: (){},
                          child: ListTile(
                title: Text('Home Page',style: TextStyle(color: Colors.black),),
                leading: Icon(Icons.home, color: Colors.black,),
              ),
            ),
             InkWell(
                          onTap: (){},
                          child: ListTile(
                title: Text('My Account',style: TextStyle(color: Colors.black),),
                leading: Icon(Icons.person, color: Colors.black,),
              ),
            ),
             InkWell(
                          onTap: (){},
                          child: ListTile(
                title: Text('My Orders',style: TextStyle(color: Colors.black),),
                leading: Icon(Icons.shopping_basket, color: Colors.black,),
              ),
            ),
             InkWell(
                          onTap: (){},
                          child: ListTile(
                title: Text('Categories',style: TextStyle(color: Colors.black),),
                leading: Icon(Icons.dashboard, color: Colors.black,),
              ),
            ),
             InkWell(
                          onTap: (){},
                          child: ListTile(
                title: Text('Favourite',style: TextStyle(color: Colors.black),),
                leading: Icon(Icons.favorite, color: Colors.black,),
              ),
            ),
            Divider( color: Colors.white,),
             InkWell(
                          onTap: (){},
                          child: ListTile(
                title: Text('Settings',style: TextStyle(color: Colors.black),),
                leading: Icon(Icons.settings, color: Colors.black,),
              ),
            ),
             InkWell(
                          onTap: (){},
                          child: ListTile(
                title: Text('About',style: TextStyle(color: Colors.black),),
                leading: Icon(Icons.help, color: Colors.black,),
              ),
            ),
          ],
        ),
        
      ),
      body: new Column(
        children: <Widget>[
          imageCerousel,
          new Padding(padding: const EdgeInsets.all(8.0),
            child:Text("catagory" ,)
          ),
        Horizontallist(),
        
        new Padding(padding: const EdgeInsets.all(10.0),),
        Text('Recent Projects'),

        Flexible(
          child: Products(),
        )
        ], 
        
      ),
       
    );
    
  }
}
 