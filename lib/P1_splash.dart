import 'dart:async';

import 'package:flutter/material.dart';

import 'P2_home.dart';





class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  void initState(){
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            '"Join hands to wipe away this mother' + "'" + 's tears"',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 17.0,
            ),
          ),
          Image.asset('assets/splashImage/logo.png'),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/splashImage/nuerobot.png'),
                Image.asset('assets/splashImage/Spine.png')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
