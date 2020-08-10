import 'package:flutter/material.dart';


class ProductDetails extends Statefulwidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture
  });
    _ProductDetailsState createState()  _ProductDetailsState();

}



class _ProductDetailsState extends State<ProductDetails> {
    widget build(buildContext context) {
      return Scaffold(
        appBar: new AppBar(
          elevation: 0.1,
          backgroundColor:Colors.red,
          title: Text('Bookapp'),
          actions:<widget>[
            new IconButton(
              Icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed:() {}
            ),
            new IconButton(
              Icon: Icon(
                Icons.shopping_cart,
                color:Colors.white,
              ),
              onPressed () {}
            )
          ],
        ),
      
      body: new ListView(
  children:<widge>)[
    new Container(
      height:300.0,
      child: GridTile(
        child:Container(
          color:Colors.white,
          child:Image.asset(widget.product_detail_picture),
        ),
        footer: new Container(
          color:Colors.white70,
          child:ListTile(
            leading:new Text(widget.product_detail_name,
            style:TextStyle(fontweight:FontWeight.bold, fontsize:16.0),)
            title:new Row(
          children: <widget>[
            Expanded(
              child: new Text("\$${widget.procduct_detail_old_price}",
              style: TextStyle(color:Colors.grey, decoration: TextDecoration.lineThrough),)
            ),

            Expanded(
              child: new Text("\$${widget.product_detail_new_price}",
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),)
            ),
          ],
        ),
          ),
          ),),
    ),

    Row(
      children:<widget>[

        Expanded(
          child: MeterialButton(
            onPressed: () {
              showDialog(context: context,
              builder: (context){
                return new AlertDialog(
                  title:new Text("pagesize"),
                  content: new Text("Choose the page size "),
                  actions:<widget>[
                    new MaterialButton(onPressed: () {
                      Navigator.of(context).pop(context);
                    },
                    child: new Text{"close"},)
                  ],
                );
              });
            },
          color: Colors.white,
          textColor: Colors.grey,
          elevation:0.2,
          child: Row(
            children:<widget>[
              Expanded(child:new Text{"pagesize"}),
              Expanded(child:new Icon(Icons.arrow_drop_down)),
            ],
          ),
          ),
        ),
        
        Expanded(
          child: MeterialButton(
            onPressed: () {
              showDialog(context: context,
              builder: (context){
                return new AlertDialog(
                  title:new Text("type"),
                  content: new Text("Choose the type "),
                  actions:<widget>[
                    new MaterialButton(onPressed: () {
                      Navigator.of(context).pop(context);
                    },
                    child: new Text{"close"},)
                  ],
                );
              });
            },
          color: Colors.white,
          textColor: colors.grey,
          elevation:0.2,
          child: Row(
            children:<widget>[
              Expanded(child:new Text{"type"}),
              Expanded(child:new Icon(Icons.arrow_drop_down)),
            ],
          ),
          ),
        ),
      ],
    ),

       Row(
      children:<widget>[

        Expanded(
          child: MeterialButton(
            onPressed: () {},
          color: Colors.red,
          textColor: colors.white,
          elevation:0.2,
          child:new Text("Buy now")
          ),
          ),

        new IconButton(icon:Icon(Icons.add_shopping_cart), color: Colors.red,

        new IconButton(icon:Icon(Icons.add_shopping_cart), color: Colors.red,
        ),
        

      ],
    ),

    new ListTile(
      title: new Text("Product details"),
    )
              Expanded(
                child:new Icon(Icons.arrow_drop_down)
              )
            )
          )
          ),
        )
      ],
    )
        ),
    ),
    );
  ]