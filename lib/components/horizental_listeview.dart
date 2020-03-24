import 'package:flutter/material.dart';

class Horizental_ListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/cats/tshirt.png',
            image_caption: 'T-shirt'
          ),
          Category(
            image_location: 'images/cats/shoe.png',
            image_caption: 'Shoe',
          ),

          Category(
            image_location: 'images/cats/jeans.png',
            image_caption: 'Jeans'
          ),

          Category(
            image_location: 'images/cats/informal.png',
            image_caption: 'Inform'
          ),

          Category(
              image_location: 'images/cats/formal.png',
              image_caption: 'Formal'
          ),

          Category(
              image_location: 'images/cats/dress.png',
              image_caption: 'Dress'
          ),

          Category(
              image_location: 'images/cats/accessories.png',
              image_caption: 'Accessories'
          ),
        ],
      ),
    );
  }
}
class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Category({
    this.image_location,
    this.image_caption
});

   @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(3.0),
    child: InkWell(
        onTap: (){},
      child: Container(
        width:80.0,
        child: ListTile(
          title: Image.asset(image_location,
            height: 50.0,
            color: Colors.blue,
          ),
          subtitle: Container(
            alignment: Alignment.topCenter,
            child: Text(image_caption),
          )
        ),
      ),
    ),
    );

  }
}
