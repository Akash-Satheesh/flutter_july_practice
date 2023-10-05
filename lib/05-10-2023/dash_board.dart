import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        centerTitle: true,
        title: Text('DashBoard'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://plus.unsplash.com/premium_photo-1673697239984-b089baf7b6e6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YmFja2dyb3VuZCUyMGltYWdlfGVufDB8fDB8fHww&w=1000&q=80"))),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 10.0, left: 10),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Sundar Pichai",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                )),
          ),
          const Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("""
                 Pichai Sundararajan (born June 10, 1972[3][4][5]), better known as Sundar Pichai (/ˈsʊndɑːr pɪˈtʃaɪ/), is an Indian-born American business executive.[6][7] He is the chief executive officer (CEO) of Alphabet Inc. and its subsidiary Google.[8]

Pichai began his career as a materials engineer. Following a short stint at the management consulting firm McKinsey & Co., Pichai joined Google in 2004,[9] where he led the product management and innovation efforts for a suite of Google's client software products, including Google Chrome and ChromeOS, as well as being largely responsible for Google Drive. In addition, he went on to oversee the development of other applications such as Gmail and Google Maps. In 2010, Pichai also announced the open-sourcing of the new video codec VP8 by Google and introduced the new video format, WebM. The Chromebook was released in 2012. In 2013, Pichai added Android to the list of Google products that he oversaw.

Pichai was selected to become the next CEO of Google on August 10, 2015, after previously being appointed Product Chief by CEO Larry Page. On October 24, 2015, he stepped into the new position at the completion of the formation of Alphabet Inc., the new holding company for the Google company family. He was appointed to the Alphabet Board of Directors in 2017.[10]

Pichai was included in Time's annual list of the 100 most influential people in 2016[11] and 2020.[12] 
                """),
              ),
            ),
          )
        ],
      ),
    );
  }
}
