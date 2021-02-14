import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String tag = 'home-page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(backgroundColor: Colors.grey.shade200, body: showBody());
  }

  Widget image_carousel = new Container(
    height: 200.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('assets/img/pic1.jpeg'),
        AssetImage('assets/img/pic2.jpeg'),
        AssetImage('assets/img/pic3.jpeg'),
        AssetImage('assets/img/pic4.jpeg'),
      ],
      autoplay: true,
      animationCurve: Curves.fastLinearToSlowEaseIn,
      animationDuration: Duration(milliseconds: 1000),
      dotSize: 4.0,
      indicatorBgPadding: 2.0,
    ),
  );

  Widget showBody() {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: ListView(
        children: <Widget>[
          image_carousel,

          GridView.count(
            shrinkWrap: true,
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              Card(
                child: Container(
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/img/photographer.png',
                        height: 36,
                        width: 36,
                      ),
                      SizedBox(height: 8.0,),
                      Text(
                        "Photographer",style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/img/venue.png',
                        height: 44,
                        width: 44,
                      ),
                      SizedBox(height: 8.0,),
                      Text(
                        "Venues",style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/img/event.png',
                        height: 36,
                        width: 36,
                      ),
                      SizedBox(height: 8.0,),
                      Text(
                        "Event Planners",style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/img/food.png',
                        height: 44,
                        width: 44,
                      ),
                      SizedBox(height: 8.0,),
                      Text(
                        "Catering",style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/img/inviation.png',
                        height: 36,
                        width: 36,
                      ),
                      SizedBox(height: 8.0,),
                      Text(
                        "Invitation Cards",style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/img/shopping.png',
                        height: 44,
                        width: 44,
                      ),
                      SizedBox(height: 8.0,),
                      Text(
                        "Shop",style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
