import 'package:flutter/material.dart';
import 'package:shopapp/main.dart';
import '../pages/Home.dart';

import './Cart.dart';

class ProductDetails extends StatefulWidget {
   final productDetails_name;
  final productDetails_image;
  final productDetails_oldprise;
  final productDetails_prise;

  ProductDetails({
    this.productDetails_image,
    this.productDetails_name,
    this.productDetails_oldprise,
    this.productDetails_prise
  });
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: new AppBar(
        backgroundColor: Colors.red,
        title: InkWell(
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>new HomePage()));},
          child: Text('Shop App')),
      actions: <Widget>[
       
        new IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white) , onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>new Cart()));}, ),
         new IconButton(icon: Icon(Icons.search,color: Colors.white) , onPressed: null, )
      ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            margin: new EdgeInsets.symmetric(vertical: 30),   
            height: 300.0,
            child: GridTile(
                
              
              child: Container(
             
                color: Colors.white70,
          
                child: Image.asset(widget.productDetails_image,),
              ),
              footer: 
              new Container(
                color: Colors.white70,
                child:ListTile(
                leading: new Text(widget.productDetails_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                
                title: new Row(
                  children: <Widget>[
                    Expanded(
                      child:new Text("\$${widget.productDetails_prise}",style: TextStyle(fontWeight: FontWeight.bold))
                    ),
                    Expanded(
                      child: new Text("\$${widget.productDetails_oldprise}",style: TextStyle(fontWeight: FontWeight.bold),
                    ))
                  ],
                ),
               
                )
              ),
            
            ),
            
            
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                  builder: (context){
                    return new AlertDialog(
                      title:new Text("Size") ,
                      content: new Text("Shose the size"),
                      actions: <Widget>[
                        new MaterialButton(
                          onPressed: (){Navigator.of(context).pop(context);},
                          child: new Text("Close"),
                        )
                      ],
                    );
                  }
                  );
                },
                color: Colors.white,
                textColor: Colors.grey,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("Size",style: TextStyle(fontSize: 16),),
                    ),
                    Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                    ),
                    
                  ],
                ),
                
                ),
                
              ),
               Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                  builder: (context){
                    return new AlertDialog(
                      title:new Text("Size") ,
                      content: new Text("Shose the size"),
                      actions: <Widget>[
                        new MaterialButton(
                          onPressed: (){Navigator.of(context).pop(context);},
                          child: new Text("Close"),
                        )
                      ],
                    );
                  }
                  );
                },
                color: Colors.white,
                textColor: Colors.grey,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("Size",style: TextStyle(fontSize: 16),),
                    ),
                    Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                    ),
                    
                  ],
                ),
                
                ),
                
              ),
               Expanded(
                child: MaterialButton(onPressed: (){ 
                  showDialog(context: context,
                  builder: (context){
                    return new AlertDialog(
                      title:new Text("Size") ,
                      content: new Text("Shose the size"),
                      actions: <Widget>[
                        new MaterialButton(
                          onPressed: (){Navigator.of(context).pop(context);},
                          child: new Text("Close"),
                        )
                      ],
                    );
                  }
                  );
                 },
                color: Colors.white,
                textColor: Colors.grey,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("Size",style: TextStyle(fontSize: 16),),
                    ),
                    Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                    ),
                    
                  ],
                ),
                
                ),
                
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: new MaterialButton(
                  onPressed: (){},
                  color: Colors.red,
                  elevation: 0.2,
                  child: Text("Buy now"),
                ),
              
              ),
              new IconButton(icon: Icon(Icons.shopping_cart),color:Colors.red , onPressed: null,),
              new IconButton(icon: Icon(Icons.favorite), color:Colors.red,onPressed: null,)
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text("Product Details"),
            subtitle: new Text("When you record Zoom meetings locally, each meeting recording is saved on your desktop device to its own folder labeled with the date, time, and meeting name. By default, these folders are inside the Zoom folder, located inside the Documents folder on Windows, macOS, and Linux"),
            
          ),
         
          
        ],
        
      )
     
    );
  }
}
