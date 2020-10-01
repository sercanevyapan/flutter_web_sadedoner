import 'package:flutter/material.dart';
import 'package:flutter_sadedoner/body_mobile.dart';
import 'package:flutter_sadedoner/footer.dart';
import 'package:flutter_sadedoner/top_desktop.dart';
import 'package:flutter_sadedoner/top_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'body_desktop.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width  of our screen
    return Scaffold(
      body: ScreenTypeLayout(
        desktop: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage("assets/images/bg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              TopDesktop(),
              BodyDesktop(),
              Spacer(
                flex: 6,
              ),
              Footer(),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
        mobile: Container(
          height: size.height,
          // // it will take full width
          width: size.width,
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage("assets/images/bg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                TopMobile(),
                SizedBox(
                  height: 25,
                ),
                BodyMobile(),
                SizedBox(
                  height: 25,
                ),
                Footer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
