import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scooter/welcome_page.dart';

import 'loginpage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    
    Future.delayed(Duration(seconds: 4), () {
      // Login ekranına yönlendirme
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
return Scaffold(
  backgroundColor: Colors.transparent,
  body: Stack(
    fit: StackFit.expand,
    children: [
      Image.asset('images/splash.png', fit: BoxFit.cover),
      Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'DütDüt',
              style: TextStyle(
                fontSize: 45,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Courgette',
              ),
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ],
        ),
      ),
    ],
  ),
);


  }}