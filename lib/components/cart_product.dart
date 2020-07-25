import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var products_on_the_cart = [
    //these are comming fromdatabase but now this is an example
    {
      'name': 'pencil',
      'picture': '',
      'price': 500,
      'quantity': 1,
    },
    {
      'name': 'book',
      'picture': '',
      'price': 150,
      'quantity': 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return Single_cart_product(
              products_on_the_cart[index]['name'],
              products_on_the_cart[index]['picture'],
              products_on_the_cart[index]['price'],
              products_on_the_cart[index]['quantity']);
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_product_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_qty;

  Single_cart_product(
      this.cart_product_name,
      this.cart_prod_picture,
      this.cart_prod_price,
      this.cart_prod_qty);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        //======LEADING Section======
        leading: Image.asset(
          cart_prod_picture,
          width: 80,
          height: 80,
        ),

        //===Title Section===
        title: Text(cart_product_name),
        //=====Subtitle Section
        subtitle: Column(
          children: <Widget>[

            //theis section is for product price
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "\$${cart_prod_price}",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ),
          ],
        ),

        trailing: Column(
          children: <Widget>[
            IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
            Text("$cart_prod_qty"),
            IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){}),
          ],
        ),
      ),
    );
  }
}