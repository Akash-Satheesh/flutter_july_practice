import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  // to run an app
  runApp(MaterialApp(
    // default theme of our flutter app
    home: SplashPage(), // initial page to be launched while running an app
  ));
}

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        //backgroundColor: Colors.white,
        body: Container(
      decoration: BoxDecoration(color: Colors.grey),
      child: Center(
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
                "https://icons.iconarchive.com/icons/simpleicons-team/simple/128/apache-cassandra-icon.png"),
            width: 200,
            height: 200,
          ),

          Text(
            "APPACHE CASSANDRA",
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
      )),
    ));
  }
}
