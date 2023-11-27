import 'package:flutter/material.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Tambahkan logika jika diperlukan, seperti penundaan dan pindah ke layar berikutnya
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://i.pinimg.com/originals/56/79/3e/56793ebed08ad64adac1e63ff1ef2930.png', // Ganti URL dengan URL gambar Anda
              width: 400.0, // Sesuaikan dengan ukuran yang diinginkan
              height: 400.0,
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
