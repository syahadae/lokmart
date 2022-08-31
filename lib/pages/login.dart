import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lokmart/main.dart';
import 'package:lokmart/widget/theme.dart';

class loginPage extends StatefulWidget {
  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  bool isChecked = false;
  bool obsecureText = false;
  FocusNode _focusNode = FocusNode();
  // FocusNode _focusnode2 = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/bg_login.png',
              ),
              Padding(
                padding: const EdgeInsets.only(top: 75.0),
                child: Center(
                  child: Image.asset(
                    'assets/logo.png',
                    width: 200,
                    height: 60,
                  ),
                ),
              )
            ],
          ),
          // SizedBox(height: 0),
          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: Text(
              'Welcome Back',
              style: headerText,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50.0, right: 10),
            child: Container(
              width: 311,
              height: 60,
              decoration: BoxDecoration(
                // color: Color(0xff84B4B4).withOpacity(0.4),
                color: Color.fromARGB(255, 234, 234, 234),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.person, color: Colors.grey),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 50.0, right: 10),
            child: Container(
              width: 311,
              height: 60,
              decoration: BoxDecoration(
                // color: Color(0xff84B4B4).withOpacity(0.4),
                color: Color.fromARGB(255, 234, 234, 234),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: TextField(
                  focusNode: _focusNode,
                  obscureText: obsecureText,
                  decoration: InputDecoration(
                      // focusColor: Colors.red,
                      filled: false,
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(17),
                          borderSide: BorderSide(
                            color: Color(0xffFF8B38),
                          )),
                      hoverColor: Colors.black,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),

                      // suffixIcon: Icon(Icons.remove_red_eye_sharp,
                      //     color: Color(0xffFF8B38)),
                      suffixIcon: IconButton(
                        color: Color(0xffFF8B38),
                        onPressed: () {
                          setState(() {
                            obsecureText = !obsecureText;
                          });
                          Timer.run(() => _focusNode.unfocus());
                        },
                        icon: Icon(obsecureText
                            ? Icons.visibility_off
                            : Icons.visibility),
                      )),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Container(
              width: 311,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xffFF8B38),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/myhomepage');
                },
                child: Center(
                  child: Text('SIGN IN', style: buttonText),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: Checkbox(
                  checkColor: Colors.white,
                  // fillColor: Color(0xffFF8B38),
                  activeColor: Color(0xffFF8B38),

                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(
                      () {
                        isChecked = value!;
                      },
                    );
                  },
                ),
              ),
              Text(
                'Keep Sign In',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Text(
                'Forgot Password',
                style: GoogleFonts.poppins(
                  decoration: TextDecoration.underline,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Color(0xffFF8B38),
                  // color: Colors(0xffFF8B38),
                ),
              ),
            ],
          ),
          SizedBox(height: 11),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Text(
                  'Don\'t have an account?',
                  style: greyText,
                  textAlign: TextAlign.center,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signuppage');
                },
                child: Text(
                  'Sign up',
                  style: orangeText,
                  textAlign: TextAlign.center,
                ),
              )
              // Padding(
              //   padding: const EdgeInsets.only(left: 5),
              //   child: Text(
              //     'Sign up',
              //     style: orangeText,
              //     textAlign: TextAlign.center,
              //   ),
              // )
            ],
          )
        ],
      ),
    );
  }
}
