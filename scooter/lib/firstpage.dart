import 'package:flutter/material.dart';
import 'package:scooter/c%C3%BCzdan_page.dart';
import 'package:scooter/profil_page.dart';
import 'package:scooter/qr_page.dart';
import 'harita_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    QrPage(),
    LocationAndMapPage(), // Harita Page'ini burada ekleyin
    CuzdanPage(),
    ProfilPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        fit: StackFit.expand,
        children: [
          _pages[_currentIndex],
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              child: Container(           
                child: BottomNavigationBar(
                  elevation: 10,                  
                  items: [
                    buildBottomNavigationBarItem(Icons.qr_code, 'QR'),
                    buildBottomNavigationBarItem(Icons.map, 'Harita'),
                    buildBottomNavigationBarItem(Icons.wallet, 'Cüzdan'),
                    buildBottomNavigationBarItem(Icons.person, 'Profil'),
                  ],
                  currentIndex: _currentIndex,
                  selectedItemColor: Colors.brown[500],
                  unselectedItemColor: Color.fromARGB(255, 209, 199, 199),
                  onTap: (index) {
                  
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(IconData icon, String label) {
    return BottomNavigationBarItem(
      backgroundColor: Colors.cyan[400],
      icon: Column(
        children: [
          Icon(icon),
          SizedBox(height: 4),
          Text(label, style: TextStyle(fontSize: 12)),
        ],
      ),
      label: '',
    );
  }
}
