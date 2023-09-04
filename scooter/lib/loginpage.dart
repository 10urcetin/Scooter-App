
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scooter/firstpage.dart';
import 'package:scooter/signinpage.dart';
import 'package:scooter/splash.dart';
import 'package:scooter/splash2.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  bool _showPassword = false; 

  @override
  Widget build(BuildContext context) {
   return Scaffold(
  backgroundColor: Colors.transparent,
  body: Stack(
    fit: StackFit.expand,
    children: [
      Image.asset('images/login.png', fit: BoxFit.cover),
      Column(
        mainAxisAlignment: MainAxisAlignment.end, // Bileşenleri sayfanın altına hizala
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            color: Colors.blueGrey[500],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            color: Colors.blueGrey[500],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextFormField(
                obscureText: !_showPassword,
                decoration: InputDecoration(
                  labelText: 'Şifre',
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _showPassword ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _showPassword = !_showPassword;
                      });
                    },
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Splash()),
              );
            },
            child: Text('Giriş'),
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 227, 89, 46),
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignInPage()),
              );
            },
            child: Text('Kayıt Ol'),
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 227, 89, 46),
            ),
          ),
        ],
      ),
    ],
  ),
); 
 
  }
  }