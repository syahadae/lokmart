import 'package:flutter/material.dart';
import 'package:lokmart/pages/home.dart';
import 'package:lokmart/pages/login.dart';
import 'package:lokmart/pages/signup.dart';
import 'package:lokmart/pages/splashscreen1.dart';
import 'package:lokmart/pages/splashscreen2.dart';

void main() {
  runApp(myHomepage());
}

class myHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginPage(),
      // initialRoute: '/splashscreen1',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/splashscreen1': (context) => const splashScreen1(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/splashscreen2': (context) => const splashScreen2(),
        '/loginpage': (context) => loginPage(),
        '/signuppage': (context) => signupPage(),
        '/myhomepage': (context) => homeScreen(),
      },
    );
  }
}
