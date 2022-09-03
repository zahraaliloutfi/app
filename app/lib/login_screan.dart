// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final emailControler = TextEditingController();
  final passwordControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'login',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              //----EMAILADDRESS---------------------
              TextFormField(
                controller: emailControler,
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (value) {
                  print(value);
                },
                decoration: InputDecoration(
                    hintText: 'Email Adress',
                    labelText: 'Email Adress',
                    //start
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder()),
                onChanged: (String v) {
                  print(v);
                },
              ),
              SizedBox(
                height: 20,
              ),
              //----------password-------------------------------
              TextFormField(
                controller: passwordControler,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                onFieldSubmitted: (value) {
                  print(value);
                },
                decoration: InputDecoration(
                    hintText: 'password',
                    labelText: 'password',
                    //start
                    prefixIcon: Icon(Icons.lock),
                    //end
                    suffixIcon: Icon(Icons.remove_red_eye_rounded),
                    border: OutlineInputBorder()),
                onChanged: (String v) {
                  print(v);
                },
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: double.infinity,
                color: Colors.blue,
                child: MaterialButton(
                  onPressed: () {
                    print(emailControler.text);
                    print(passwordControler.text);
                  },
                  child: Text(
                    'LOGIN',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('don\'t have an account'),
                  TextButton(onPressed: () {}, child: Text('Register Now..'))
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
