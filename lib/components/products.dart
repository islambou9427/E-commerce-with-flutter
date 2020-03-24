import 'package:flutter/material.dart';


class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var Product_list = [
    {
      "name": "blazar",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 7500,
      "price" : 5700 ,
    },
    {
      "name": "dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 3500,
      "price" : 2200 ,
    },
    {
      "name": "hills",
      "picture": "images/products/hills1.jpeg",
      "old_price": 5500,
      "price" : 4200 ,
    },
    {
      "name": "pants",
      "picture": "images/products/pants2.jpeg",
      "old_price": 4000,
      "price" : 3200 ,
    },

    {
      "name": "shoe",
      "picture": "images/products/shoe1.jpg",
      "old_price": 3500,
      "price" : 2000 ,
    },
    {
      "name": "skt",
      "picture": "images/products/skt1.jpeg",
      "old_price": 2500,
      "price" : 1800 ,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: Product_list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2
        ),

        itemBuilder: (BuildContext context , int index ){
         return Single_prod(
           prod_name: Product_list[index]['name'],
           prod_picture: Product_list[index]['picture'],
           prod_old_price: Product_list[index]['old_price'],
           prod_price: Product_list[index]['price'],
         );
        });
  }
}

class Single_prod extends StatelessWidget {

  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price
});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: (){},
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold),),
                      title: Text("\DA $prod_price"),
                      subtitle: Text('\DA $prod_old_price',style: TextStyle(decoration: TextDecoration.lineThrough),),
                    ),
                  ),
                  child: Image.asset(prod_picture,
                  fit: BoxFit.cover,
                  )),

            ),
          )),
    );
  }
}

