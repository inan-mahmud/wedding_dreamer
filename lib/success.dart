import 'package:flutter/material.dart';
import 'package:wedding_app/default_button.dart';
import 'package:wedding_app/home.dart';

class Success extends StatelessWidget {
  static String tag = "success-page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height / 4),
          Image.asset(
            "assets/img/done.png",
            height: MediaQuery.of(context).size.height / 4,
            fit: BoxFit.cover, //40%
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 56.0),
            child: Text(
              "Booking Success",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Spacer(),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: DefaultButton(
              text: "Back to home",
              press: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    HomePage.tag, (Route<dynamic> route) => false);
              },
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
