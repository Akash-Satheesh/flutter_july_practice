import 'package:flutter/material.dart';

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
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.facebook_outlined, size: 60, color: Colors.blue),
            Text(
              "FACEBOOK",
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Powered by META",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                  ),
                ),
              ],
            )
          ],
        )));
  }
}
