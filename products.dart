import 'package:flutter/material.dart';


class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Water bottle",
      "picture": "images/products/waterbottle1.jpeg",
      "old_price": 250,
      "price": 200,
    },
    {
      "name": "lunch box",
      "picture": "images/products/lunchbox1.jpeg",
      "old_price": 370,
      "price": 350,
    },
    {
      "name": "Pg 40 Atlas",
      "picture": "images/products/pg40atlas.jpeg",
      "old_price":38 ,
      "price": 35,
    },
    {
      "name": "Pg 80 Atlas",
      "picture": "images/products/pg80atlas.jpeg",
      "old_price":55 ,
      "price": 50,
    },
    {
      "name": "Pg 120 Atlas",
      "picture": "images/products/pg120atlas.jpeg",
      "old_price":72 ,
      "price": 70,
    },
    {
      "name": "Pg 160 Atlas",
      "picture": "images/products/pg160atlas.jpeg",
      "old_price":92 ,
      "price": 90,
    },
    {
      "name": "Pg 200 Atlas",
      "picture": "images/products/pg200atlas.jpeg",
      "old_price":117 ,
      "price": 115,
    },
    {
      "name": "Pg 320 Atlas",
      "picture": "images/products/pg320atlas.jpeg",
      "old_price":140 ,
      "price": 138,
    },
    {
      "name": "Pg 400 Atlas",
      "picture": "images/products/pg400atlas.jpeg",
      "old_price":215 ,
      "price": 210,
    },
    {
      "name": " CR Pg 80 Atlas",
      "picture": "images/products/crpg80atlas.jpeg",
      "old_price":117 ,
      "price": 115,
    },
     {
      "name": " CR Pg 120 Atlas",
      "picture": "images/products/crpg120atlas.jpeg",
      "old_price":155 ,
      "price": 150,
    }, 
    {
      "name": " CR Pg 160 Atlas",
      "picture": "images/products/crpg160atlas.jpeg",
      "old_price":187 ,
      "price": 185,
    },
    {
      "name": " CR Pg 200 Atlas",
      "picture": "images/products/crpg200atlas.jpeg",
      "old_price":242 ,
      "price": 240,
    },
    {
      "name": " Drawing Pg 40 Atlas",
      "picture": "images/products/drawing40atlas.jpeg",
      "old_price":77 ,
      "price": 75,
    },
    {
      "name": " Drawing Pg 80 Atlas",
      "picture": "images/products/drawing80atlas.jpeg",
      "old_price":112 ,
      "price": 110,
    },
    {
      "name": " Atlas chooty",
      "picture": "images/products/atlaschooty.jpeg",
      "old_price":null ,
      "price": 20,
    },
    {
      "name": "Atlas cool",
      "picture": "images/products/atlascool.jpeg",
      "old_price":null ,
      "price": 20,
    },
    {
      "name": "Atlas chooty ii",
      "picture": "images/products/atlaschootyii.jpeg",
      "old_price":null ,
      "price": 10,
    },
    {
      "name": "Atlas max",
      "picture": "images/products/atlasmax.jpeg",
      "old_price":null ,
      "price": 10,
    },
    {
      "name": "Sun flower",
      "picture": "images/products/sunflower.jpeg",
      "old_price":null ,
      "price": 20,
    },
    {
      "name": "littel heart",
      "picture": "images/products/lettelheart.jpeg",
      "old_price":null ,
      "price": 20,
    },
    {
      "name": "Sketch art",
      "picture": "images/products/sketchart.jpeg",
      "old_price":null ,
      "price": 25,
    },
    {
      "name": "Tipex Whitex mini",
      "picture": "images/products/tipexmini.jpeg",
      "old_price":67 ,
      "price": 65,
    },
    {
      "name": "Tipex whitex large ",
      "picture": "images/products/tipexlarge.jpeg",
      "old_price":85 ,
      "price": 80,
    },
    {
      "name": "Atlas 6colors",
      "picture": "images/products/atlascolor.jpeg",
      "old_price":132 ,
      "price": 130,
    },
    {
      "name": "Atlas 12colors",
      "picture": "images/products/atlascolor.jpeg",
      "old_price":255 ,
      "price": 250,
    },


  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_pricture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_pricture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () {},
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                        leading: Text(
                          prod_name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        title: Text(
                          "\$$prod_price",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.w800),
                        ),
                        subtitle: Text(
                          "\$$prod_old_price",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w800,
                              decoration
                                  :TextDecoration.lineThrough),
                        ),
                    ),
                  ),
                  child: Image.asset(
                    prod_pricture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}