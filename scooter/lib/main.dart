import 'package:flutter/material.dart';
import 'package:scooter/splash.dart';
import 'package:scooter/welcome_page.dart';
import 'loginpage.dart';

void main() {
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      initialRoute: '/splash', // Başlangıçta '/splash' yolunu atayarak SplashScreen ile başlatın
      routes: {
        '/welcome': (context) => WelcomePage(),
        '/login': (context) => LogInPage(), // Login sayfasına yönlendirme
        '/splash': (context) => SplashScreen(), // Splash Screen sayfasına yönlendirme
      },
    );
  }
}


 