import 'package:flutter/material.dart';
//import 'package:flutter_app1/home.dart';
import 'package:flutter_july_practice/20-9-2023/home1.dart';
//import 'package:flutter_app1/login_page1.dart';

void main() {
  runApp(MaterialApp(
    home: Login_stateful(),
  ));
}

class Login_stateful extends StatefulWidget {
  const Login_stateful({super.key});

  @override
  State<Login_stateful> createState() => _Login_statefulState();
}

class _Login_statefulState extends State<Login_stateful> {
  final formkey = GlobalKey<FormState>();
  String username = "admin@gmail.com";
  String password = 'abc@123';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Username'),
              validator: (uname) {
                if (uname!.isEmpty || uname != username) {
                  return 'username must not be empty/ or invalid';
                } else {
                  return null;
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Password',
              ),
              validator: (pass) {
                if (pass!.isEmpty || pass != password) {
                  return 'password must not be empty/ or invalid';
                } else {
                  return null;
                }
              },
            ),
          ),
          ElevatedButton(
              onPressed: () {
                final valid = formkey.currentState!.validate();
                if (valid) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Home1()));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Invalid datas')));
                }
              },
              child: Text('Login'))
        ]),
      ),
    );
  }
}
