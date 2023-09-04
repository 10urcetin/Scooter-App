import 'package:flutter/material.dart';
import 'package:scooter/basla.dart';

class Kapatma extends StatelessWidget {
  const Kapatma({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('images/kapatmakuralı.png', fit: BoxFit.cover),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 120.0),
              child: Text(
                "Lütfen scooter'ı kapatırken bir yere bağlamayı veya düz bırakmayı unutmayınız. Aksi takdirde ceza ödemek zorunda kalırsınız.",
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
                    MaterialPageRoute(builder: (context) => Basla()),
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
