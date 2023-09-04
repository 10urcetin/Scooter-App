import 'package:flutter/material.dart';
import 'package:scooter/firstpage.dart';
import 'package:scooter/signinpage.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    // 4 saniye bekledikten sonra FirstPage'e yönlendir.
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => FirstPage()),
      );
    });
  }

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      color: Color.fromARGB(255,227,251, 251), // Arka plan rengini istediğiniz renge ayarlayın
      child: Center(
        child: Image.asset(
          'images/scooter.gif',
          width: MediaQuery.of(context).size.width, // Ekran genişliği
          height: MediaQuery.of(context).size.height, // Ekran yüksekliği
        ),
      ),
    ),
  );
}


}
