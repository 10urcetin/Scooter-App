import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[50],
     
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            Align(
              alignment: Alignment.center,
            child:CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/pp.jpeg'), // Profil fotoğrafı
            ),
            ),
            Text(
              'Onur Çetin ',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'E-posta adresi: onucetin003@gmail.com',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 32),
            ListTile(
              leading: Icon(Icons.warning),
              title: Text('Şikayet Oluştur'),
              onTap: () {
                // Şikayet oluşturma işlemi
              },
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text('Geçmiş Aktivitelerim'),
              onTap: () {
                // Geçmiş aktiviteler sayfasına gitme işlemi
              },
            ),
            ListTile(
              leading: Icon(Icons.person_add),
              title: Text('Davet Et Kazan'),
              onTap: () {
                // Davet etme sayfasına gitme işlemi
              },
            ),
            ListTile(
              leading: Icon(Icons.card_giftcard),
              title: Text('Kuponlarım'),
              onTap: () {
                // Kuponlar sayfasına gitme işlemi
              },
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text('Arkadaşına Hediye Gönder'),
              onTap: () {
                // Arkadaşına hediye gönderme sayfasına gitme işlemi
              },
            ),
          ],
        ),
      ),
    );
  }
}
