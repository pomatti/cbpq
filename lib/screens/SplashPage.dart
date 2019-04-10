import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';

class SplashPage extends StatefulWidget {
  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  void navigationToNextPage() {
    Navigator.pushNamed(context, '/HomePage');
  }

  startSplashScreenTimer() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationToNextPage);
  }

  @override
  void initState() {
    super.initState();
    startSplashScreenTimer();
  }

  @override
  Widget build(BuildContext context) {
    // To make this screen full screen.
    // It will hide status bar and notch.
    //SystemChrome.setEnabledSystemUIOverlays([]);

    // full screen image for splash screen.
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: new Image.asset('assets/icon.png'),
    );
  }
}
