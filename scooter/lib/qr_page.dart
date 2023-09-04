import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:permission_handler/permission_handler.dart';

class QrPage extends StatefulWidget {
  const QrPage({Key? key}) : super(key: key);

  @override
  _QrPageState createState() => _QrPageState();
}

class _QrPageState extends State<QrPage> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;

  @override
  void initState() {
    super.initState();
    _checkCameraPermission();
  }

  Future<void> _checkCameraPermission() async {
    var status = await Permission.camera.status;
    if (status.isDenied) {
      await Permission.camera.request();
    }
    if (status.isGranted) {
      // Kamera izni verildiyse QR kod okuma ekranını açabilirsiniz.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(
                "images/qr.png",
                width: 400.0,
                height: 400.0,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Icon(
            Icons.qr_code,
            size: 48.0,
            color: Colors.blue,
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // QR kod okuma ekranını açmak için bir işlev ekleyin
              _openQRScanner();
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              primary: Color.fromARGB(255, 34, 113, 249),
            ),
            child: Text(
              "Sürüşe Başla",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _openQRScanner() {
    // Kamera izni kontrolü yapıldığında ve izin verildiğinde QR kod okuma ekranını açın.
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => Scaffold(
        appBar: AppBar(title: Text("DütDüt Qr Kodunu")),
        body: QRView(
          key: qrKey,
          onQRViewCreated: _onQRViewCreated,
        ),
      ),
    ));
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      // QR kod tarama sonuçları burada işlenebilir
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
