import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class BodyDesktop extends StatefulWidget {
  @override
  _BodyDesktopState createState() => _BodyDesktopState();
}

class _BodyDesktopState extends State<BodyDesktop> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10.0,
              ),
              Text(
                " SADE DÖNER ",
                textAlign: TextAlign.center,
                style: GoogleFonts.secularOne(
                  textStyle: TextStyle(color: Colors.white, letterSpacing: 30),
                  fontSize: 60,
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "SİPARİŞ VERMEK İÇİN :",
                style: GoogleFonts.secularOne(
                  textStyle: TextStyle(color: Colors.white, letterSpacing: 5),
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  _launchURLPhone();
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                  child: Text(
                    "0535 345 01 01",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.secularOne(
                      textStyle:
                          TextStyle(color: Colors.white, letterSpacing: 5),
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 31, 229, 146),
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

_launchURLPhone() async {
  const url = 'tel://05353450101';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
