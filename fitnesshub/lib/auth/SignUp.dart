// ignore_for_file: prefer_const_constructors

import 'package:fitnesshub/auth/auth_page.dart';
import 'package:fitnesshub/screen/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpPage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

  // ignore: unused_field
  late String _name;
  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController pwd = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF40D876),
        title: Text('Sign Up'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/image1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    labelText: 'Name',
                    labelStyle: TextStyle(color: Colors.white)),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your fullname';
                  }
                  return null;
                },
                onSaved: (value) => _name = value!,
              ),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.location_city,
                      color: Colors.white,
                    ),
                    labelText: 'Address',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    )),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
                onSaved: (value) => email = value! as TextEditingController,
              ),
              TextFormField(
                controller: email,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.white)),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
                onSaved: (value) => email = value! as TextEditingController,
              ),
              TextFormField(
                controller: pwd,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.white)),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                onSaved: (value) => pwd = value! as TextEditingController,
                obscureText: true,
              ),
              ElevatedButton(
                  onPressed: () async {
                    await FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: email.text, password: pwd.text);
                  },
                  child: Text("Register"))
            ],
          ),
        ),
      ),
    );
  }
}
