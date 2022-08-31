import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lokmart/widget/theme.dart';

class splashScreen2 extends StatelessWidget {
  const splashScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/bg_splashscreen.png',
              ),
              Padding(
                padding: const EdgeInsets.only(),
                child: Center(
                  child: Image.asset(
                    'assets/img_splashscreen2.png',
                    width: 300,
                    height: 350,
                    alignment: Alignment.topCenter,
                  ),
                ),
              )
            ],
          ),
          Text('Best Quality and\nFast Delivery!', style: headerText),
          SizedBox(height: 20),
          Text('we just need 1 minute do get in touch', style: bodyText),
          Image.asset(
            'assets/dotslider2.png',
            width: 100,
            height: 100,
          ),
          Container(
            width: 311,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xffFF8B38),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/loginpage');
              },
              child: Center(
                child: Text('Get Started', style: buttonText),
              ),
            ),
          )
        ],
      ),
    );
  }
}
