import 'dart:async';

import 'package:flutter/material.dart';
//import 'package:flutter_app1/login_page.dart';
//import 'package:flutter_app1/login_page1.dart';
import 'package:flutter_july_practice/21-9-2023/list1.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.teal),
    home: Splash2(),
  ));
}

class Splash2 extends StatefulWidget {
  const Splash2({super.key});

  @override
  State<StatefulWidget> createState() => _Splash2State();
}

class _Splash2State extends State {
  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => ListView1()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Icon(Icons.facebook_outlined, size: 60, color: Colors.blue),
            // Image(
            //   image: AssetImage(
            //       "assets/icons/Simpleicons-Team-Simple-Alwaysdata.512(1).png"),
            //   width: 100,
            //   height: 100,
            // ),
            Image(
              image: NetworkImage(
                  "https://cdn4.iconfinder.com/data/icons/iconsimple-logotypes/512/whatsapp-128.png"),
              width: 200,
              height: 200,
            ),

            Text(
              "WhatsApp",
              style: GoogleFonts.viga(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 30,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //Text(
                //"Powered by META",
                //style: TextStyle(
                //fontSize: 20,
                //color: Colors.blue,
                //),
                //),
              ],
            )
          ],
        )));
  }
}
