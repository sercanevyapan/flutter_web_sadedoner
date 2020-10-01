import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatefulWidget {
  Footer({Key key}) : super(key: key);

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _launchURLSercan();
      },
      child: Center(
        child: Container(
          alignment: Alignment.center,
          child: Text("    © 2020 SERCAN EVYAPAN. ALL RIGHTS RESERVED   ",
              style: GoogleFonts.secularOne(
                textStyle: TextStyle(color: Colors.grey, letterSpacing: 3),
                fontSize: 8,
              )),
        ),
      ),
    );
  }
}

_launchURLSercan() async {
  const url = 'https://sercanevyapan.dev';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
