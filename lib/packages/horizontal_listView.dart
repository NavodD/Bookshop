import 'package:flutter/material.dart';

class Horizontallist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Catalog(
            image_location: 'images/4.png',
            image_caption: '  Books',
          ),
           Catalog(
            image_location: 'images/10.png',
            image_caption: '  Pens',
          ),
           Catalog(
            image_location: 'images/56.png',
            image_caption: '  Pencils',
          ),
           Catalog(
            image_location: 'images/aa.png',
            image_caption: ' Papers',
          ),
           Catalog(
            image_location: 'images/44.png',
            image_caption: '  Tapes ',
          ),
           Catalog(
            image_location: 'images/55.png',
            image_caption: ' Sissors',
          ),
           
          
        ],
      ),
    );
  }
}

class Catalog extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Catalog({
    this.image_caption,
    this.image_location,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100,
              height: 80,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
               child:Text(image_caption),
            )
          ),
        ),
      ),
    );
  }
}
