import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scooter/haz%C4%B1rl%C4%B1k.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage
({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('images/welcome.png', fit: BoxFit.cover),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center, // Ana eksen hizalaması
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 95.0),
                  child: Text(
                    "DütDüt'e Hoşgeldin. Eğitim için ileri tuşlarını takip edebilirsiniz.",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Courgette',
                    ),
                    textAlign: TextAlign.center, // Metni ortala
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Hazirlik()),
                      );
                    },
                    icon: Icon(Icons.arrow_forward, color: Colors.black), // İleri ikonu
                    label: Text(''), // Boş bir metin, çünkü ikon zaten var
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, // Butonun arka plan rengi
                      onPrimary: Colors.white, // Butonun üzerindeki metin rengi
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0), // Butonun köşe yuvarlatması
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}