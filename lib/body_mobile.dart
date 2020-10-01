import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class BodyMobile extends StatefulWidget {
  @override
  _BodyDesktopState createState() => _BodyDesktopState();
}

class _BodyDesktopState extends State<BodyMobile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "SADE\nDÖNER",
            textAlign: TextAlign.center,
            style: GoogleFonts.secularOne(
              textStyle: TextStyle(color: Colors.white, letterSpacing: 20),
              fontSize: 25,
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "SİPARİŞ VERMEK İÇİN : ",
              style: GoogleFonts.secularOne(
                textStyle: TextStyle(color: Colors.white, letterSpacing: 5),
                fontSize: 10,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              _launchURLPhone();
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Text(
                "0535 345 01 01",
                textAlign: TextAlign.center,
                style: GoogleFonts.secularOne(
                  textStyle: TextStyle(color: Colors.white, letterSpacing: 5),
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 31, 229, 146),
                  borderRadius: BorderRadius.circular(5)),
            ),
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
