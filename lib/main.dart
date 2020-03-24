import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      )
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget view = new Container(
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50.0),
          bottomRight: Radius.circular(50.0)
        ),
        color: Colors.blue,
      ),
    );

    Widget image_carousel = new Container(
      height: 200.0,
      padding: EdgeInsets.only(
        top: 1,
      ),
      margin: EdgeInsets.only(
        right: 15,
        left: 15,
      ),
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),

        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1500),
        dotSize: 7,
        dotColor: Colors.blue,
        indicatorBgPadding: 10,
      ),
    );
    return Scaffold(

      appBar: new AppBar(
        elevation: 0.0,
        title: Text('E-islam Shop'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,), onPressed: (){})
        ],
      ),



      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(accountName: Text('Islam Bouagada'), accountEmail: Text('islem.bouagada@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.blueAccent
              ),
            ),

            // __________body _________

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home,color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Account '),
                leading: Icon(Icons.person,color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Ordre'),
                leading: Icon(Icons.shopping_basket,color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard,color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite,color: Colors.red,),
              ),
            ),
            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Setting'),
                leading: Icon(Icons.settings,color: Colors.blue,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help,color: Colors.blue,),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          view,
          image_carousel
        ],

      ),

    );
    }



  }

