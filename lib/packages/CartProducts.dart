import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
 
  @override
  _CartProductsState createState() => _CartProductsState();
}


    
class _CartProductsState extends State<CartProducts> {
   var CartProductList =[
    {
      "name" : "Color Box",
      "image" : "images/1.jpg",
      "product_prise" : 100,
      "size" : "M",
      "quantity" : "1",
      "color" : "Red"
    },
     {
      "name" : "Color Box",
      "image" : "images/1.jpg",
      "product_prise" : 100,
      "size" : "M",
      "quantity" : "1",
      "color" : "Red"
    },
     {
      "name" : "Color Box",
      "image" : "images/1.jpg",
      "product_prise" : 100,
      "size" : "M",
      "quantity" : "1",
      "color" : "Red"
    },
     {
      "name" : "Color Box",
      "image" : "images/1.jpg",
      "product_prise" : 100,
      "size" : "M",
      "quantity" : "1",
      "color" : "Red"
    },
     {
      "name" : "Color Box",
      "image" : "images/1.jpg",
      "product_prise" : 100,
      "size" : "M",
      "quantity" : "1",
      "color" : "Red"
    },
     {
      "name" : "Color Box",
      "image" : "images/1.jpg",
      "product_prise" : 100,
      "size" : "M",
      "quantity" : "1",
      "color" : "Red"
    },
     {
      "name" : "Color Box",
      "image" : "images/1.jpg",
      "product_prise" : 100,
      "size" : "M",
      "quantity" : "1",
      "color" : "Red"
    },
     
    ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: CartProductList.length,
      itemBuilder: (context, index){return SingleCartProduct(
        product_name: CartProductList[index]["name"],
        product_image: CartProductList[index]["image"],
        product_prise: CartProductList[index]["product_prise"],
        size: CartProductList[index]["size"],
        quantity : CartProductList[index]["quantity"],
        color: CartProductList[index]["color"],
      );},

    ); }
}
class SingleCartProduct extends StatelessWidget {
   final product_name;
  final product_image;
  final product_prise;
  final size;
  final quantity;
  final color;

  SingleCartProduct({
     this.product_name,
      this.product_image,
      this.product_prise,
      this.color,
      this.quantity,
      this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(product_image, width:80.0, height:100.0),
        title: new Text(product_name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[               
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: new Text("SIze :"),
                ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: new Text(size),
                ) ,

                 Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                child: new Text("Color :"),
                ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: new Text(size),
                ),
              

              ],
            ),
            new Container(
              alignment: Alignment.topLeft,
              child:  new Text("\$${product_prise}" ),
            )
           
          ],
          
        ),
       trailing: FittedBox(
          fit: BoxFit.cover,
          child: Column(
          children: <Widget>[
            new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
            new Text("$quantity",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
            new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){}),
          ],
          ),
        ),
      ),

    );
  }
}