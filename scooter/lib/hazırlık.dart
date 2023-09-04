import 'package:flutter/material.dart';
import 'package:scooter/kapatma.dart';

class Hazirlik extends StatelessWidget {
  const Hazirlik({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('images/hazırlık.png', fit: BoxFit.cover),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 95.0),
              child: Text(
                "Lütfen scootera binmeden önce gerekli önlemlerinizi alınız.",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
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
                    MaterialPageRoute(builder: (context) => Kapatma()),
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
