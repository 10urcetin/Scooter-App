import 'package:flutter/material.dart';

class OdemeSayfasi extends StatefulWidget {
  @override
  _OdemeSayfasiState createState() => _OdemeSayfasiState();
}

class _OdemeSayfasiState extends State<OdemeSayfasi> {
  String secilenPaket = ''; // Kullanıcının seçtiği önerilen paket
  String kartNumarasi = '';
  String sonKullanimTarihi = '';
  String guvenlikKodu = '';
  
  double bakiye = 250.0;
  double secilenTutar = 0.0;
  List<double> onerilenTutarlar = [30, 50, 100]; // Önerilen tutarlar listesi

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Para Yükleme'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Önerilen Tutarlar'),
            SizedBox(height: 10),
            for (double tutar in onerilenTutarlar)
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    secilenTutar = tutar;
                  });
                },
                child: Text('$tutar TL'),
              ),
            SizedBox(height: 20),
            secilenTutar > 0
                ? Column(
                    children: [
                      Text('Seçilen Tutar: $secilenTutar TL'),
                      ElevatedButton(
                        onPressed: () {
                          // Ödeme işlemi ve bakiye güncellemesi
                          // Bu kısımda ödeme ağ geçidi entegrasyonunu gerçekleştirebilirsiniz
                          double bonus = secilenTutar * 0.2; // Bonus hesaplama
                          bakiye += secilenTutar + bonus; // Bakiye güncelleme
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('İşlem Tamamlandı'),
                                content: Text(
                                    'Ödeme işlemi tamamlandı.\nYüklenen Tutar: $secilenTutar TL\nBonus: $bonus TL'),
                                actions: <Widget>[
                                  TextButton(
                                    child: Text('Tamam'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      Navigator.pop(context); // Sayfayı kapat
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Text('Ödemeyi Tamamla'),
                      ),
                    ],
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}