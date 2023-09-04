import 'package:flutter/material.dart';

import 'odeme_page.dart';

class CuzdanPage extends StatelessWidget {
  const CuzdanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bakiye = 250.0;
    List<String> kampanyalar = ['Cüzdanınıza Para Yükleyin Daha Fazla Kazanın','Öğrencilere özel %10 İndirim', 'Aylık Kampanyalarımız', 'Hediye Kuponu'];

    return Scaffold(
      backgroundColor: Colors.cyan[50],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 300,
              child: Image.asset('images/cuzdan.png'),
            ),
            SizedBox(height: 8),
            Text(
              'Cüzdan Bakiyesi',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '$bakiye TL',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.green),
            ),
            SizedBox(height: 8),
            Text(
              'İndirimli Kampanyalar',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: kampanyalar.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.local_offer),
                    title: Text(kampanyalar[index]),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      if (index == 0) {
                        // Ödeme işlemi başlatma veya para yükleme sayfasına yönlendirme
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OdemeSayfasi()),
                        );
                      } else {
                        // Diğer kampanyalara yönlendirme veya işlem yapma
                      }
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
