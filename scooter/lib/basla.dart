import 'package:flutter/material.dart';
import 'package:scooter/loginpage.dart';

class Basla extends StatelessWidget {
  const Basla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('images/baslama.png', fit: BoxFit.cover),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 95.0),
              child: Text(
                "Hazırsanız kayıt olarak başlayabilirsiniz. İyi sürüşler.",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Courgette',
                ),
                textAlign: TextAlign.center, // Metni ortala
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 5.0), // Alt boşluk
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LogInPage()),
                  );
                },
                icon: Icon(Icons.arrow_forward, color: Colors.black),
                label: Text(''),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue, // Butonun arka plan rengi
                  onPrimary: Colors.white, // Butonun üzerindeki metin rengi
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0), // Butonun köşe yuvarlatması
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
