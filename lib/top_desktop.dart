import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class TopDesktop extends StatefulWidget {
  TopDesktop({Key key}) : super(key: key);

  @override
  _TopState createState() => _TopState();
}

class _TopState extends State<TopDesktop> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/logo.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Ata Caddesi No:43/A Balçova / İZMİR  ",
                style: GoogleFonts.secularOne(
                  textStyle: TextStyle(color: Colors.white),
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      _launchURLInstagram();
                    },
                    child: Image.asset(
                      "assets/images/instagram.png",
                      height: 40,
                      width: 40,
                    ),
                  ),
                  SizedBox(width: 16.0),
                  GestureDetector(
                    onTap: () {
                      _launchURLFacebook();
                    },
                    child: Image.asset(
                      "assets/images/facebook.png",
                      height: 40,
                      width: 40,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

_launchURLInstagram() async {
  const url = 'https://www.instagram.com/sade_doner/?hl=tr';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLFacebook() async {
  const url = 'https://www.facebook.com/sadednr';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
