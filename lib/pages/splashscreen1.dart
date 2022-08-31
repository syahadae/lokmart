import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lokmart/main.dart';
import 'package:lokmart/widget/theme.dart';

class splashScreen1 extends StatelessWidget {
  const splashScreen1({Key? key}) : super(key: key);

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
                    'assets/img_splashscreen1.png',
                    width: 300,
                    height: 350,
                    alignment: Alignment.topCenter,
                  ),
                ),
              )
            ],
          ),
          Text('Welcome to LokMart!\nGrocery Applications', style: headerText),
          SizedBox(height: 20),
          Text('You can find anything here :)', style: bodyText),
          Image.asset(
            'assets/dotslider1.png',
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
                Navigator.pushNamed(context, '/splashscreen2');
              },
              child: Center(
                child: Text('NEXT', style: buttonText),
              ),
            ),
          )
        ],
      ),
    );
  }
}
