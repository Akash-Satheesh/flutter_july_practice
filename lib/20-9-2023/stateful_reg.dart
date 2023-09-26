import 'package:flutter/material.dart';
//import 'package:flutter_app1/login_page.dart';
//import 'package:flutter_july_practice\lib\20-9-2023\login_stateful1.dart';
import 'package:flutter_july_practice/20-9-2023/login_stateful1.dart';
//import 'package:flutter_app1/login_page1.dart';
//import 'package:flutter_app1/login_page1.dart';

void main() {
  runApp(MaterialApp(
    home: Registration_stateful(),
  ));
}

class Registration_stateful extends StatefulWidget {
  const Registration_stateful({super.key});

  @override
  State<Registration_stateful> createState() => _Registration_statefulState();
}

class _Registration_statefulState extends State<Registration_stateful> {
  final formkey = GlobalKey<FormState>();
  String? pass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Name'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Username'),
                  validator: (uname) {
                    if (uname!.isEmpty ||
                        !uname.contains('@') ||
                        !uname.contains('.com')) {
                      return 'username must not be empty/ or invalid';
                    } else {
                      return null;
                    }
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Phone Number'),
                validator: (num) {
                  if (num!.isEmpty || num.length != 10) {
                    return 'Phone number shoud have 10 digits / field must not be empty';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                validator: (password) {
                  pass = password;
                  if (password!.isEmpty || password.length < 6) {
                    return 'Password must not be empty/ password lengthmust be <6';
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Confirm Password'),
                validator: (cpassword) {
                  if (cpassword!.isEmpty || cpassword != pass) {
                    return 'Password must be same / field must not be empty';
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
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Login_stateful()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Invalid datas')));
                  }
                },
                child: Text('Login'))
          ]),
        ),
      ),
    );
  }
}
