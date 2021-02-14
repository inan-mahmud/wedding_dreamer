import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import 'details.dart';

class PhotoList extends StatefulWidget {
  static String tag = 'photo-page';

  @override
  _PhotoListState createState() => _PhotoListState();
}

class _PhotoListState extends State<PhotoList> {
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
        AssetImage('assets/img/photo1.jpg'),
        AssetImage('assets/img/photo2.jpg'),
        AssetImage('assets/img/photo3.jpg'),
        AssetImage('assets/img/photo4.jpg'),
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Bridal Heritage",
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Details.tag);
                        },
                        color: Colors.teal,
                        child: Text(
                          "Book Now",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Wedding Diary",
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Details.tag);
                        },
                        color: Colors.teal,
                        child: Text(
                          "Book Now",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "De Capture",
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Details.tag);
                        },
                        color: Colors.teal,
                        child: Text(
                          "Book Now",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Momento Photography",
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Details.tag);
                        },
                        color: Colors.teal,
                        child: Text(
                          "Book Now",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Memory Click",
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Details.tag);
                        },
                        color: Colors.teal,
                        child: Text(
                          "Book Now",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Wedding Eye",
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Details.tag);
                        },
                        color: Colors.teal,
                        child: Text(
                          "Book Now",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
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
