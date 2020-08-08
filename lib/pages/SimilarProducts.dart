import 'package:flutter/material.dart';
import '../pages/ProductDetails.dart';

class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {

  var product_list =[
    {
      "name" : "Color Box",
      "image" : "images/1.jpg",
      "old_prise" : 120,
      "new_prise" : 100,
    },
    {
      "name" : "Pencil",
      "image" : "images/2.jpg",
      "old_prise" : 120,
      "new_prise" : 100,
    }
     
    
    
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
          return SingleProduct(
            product_name: product_list[index]['name'],
            product_image: product_list[index]['image'],
            product_oldprise: product_list[index]['old_prise'],
            product_prise: product_list[index]['new_prise'],
          );
        }
    );
   
  }
   
}

class SingleProduct extends StatelessWidget {
  final product_name;
  final product_image;
  final product_oldprise;
  final product_prise;

  SingleProduct({
      this.product_name,
      this.product_image,
      this.product_oldprise,
      this.product_prise,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_name,
        child: InkWell(onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
          builder: (context) => new ProductDetails(
            productDetails_name: product_name,
            productDetails_image: product_image,
            productDetails_oldprise: product_oldprise,
            productDetails_prise: product_prise
          )
        )),
        child: GridTile(
          footer: Container(
            color: Colors.white70,
            child: ListTile(
              leading: Text(product_name, style: TextStyle(fontWeight: FontWeight.bold),),
            title: Text("\$$product_prise",style: TextStyle(color: Colors.red),),
            subtitle:Text("\$$product_prise",style: TextStyle(color: Colors.red),) ,
            ),
          ),
        child:Image.asset(product_image,fit:BoxFit.cover)
        ),
        )
      ),
    );
  }
}

