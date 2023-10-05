import 'package:flutter/material.dart';
import 'package:flutter_july_practice/05-10-2023/dash_board.dart';
//import 'package:flutter_july_practice/21-9-2023/list1.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.teal),
    home: Drawer1Ex(),
  ));
}

class Drawer1Ex extends StatelessWidget {
  const Drawer1Ex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Drawer'),
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topRight,
                colors: [Colors.orange, Colors.white, Colors.blue]),
          ),
          child: ListView(
            children: [
              SizedBox(
                width: 150,
                height: 50,
              ),
              ListTile(
                title: Text('Akash'),
                subtitle: Text('akash123@gmail.com'),
                trailing: Icon(Icons.close),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1695780423226-8d915692f08e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDF8NnNNVmpUTFNrZVF8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60'),
                  radius: 30,
                ),
              ),
              SizedBox(
                width: 100,
                height: 10,
              ),
              ListTile(
                leading: Icon(Icons.dashboard_outlined),
                title: Text('Dashboard'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => DashBoard(),
                  ));
                },
              ),
              ListTile(
                leading: Icon(Icons.leaderboard_outlined),
                title: Text('Leads'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.man_outlined),
                title: Text('Clients'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.notification_important_sharp),
                title: Text('Projects'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
