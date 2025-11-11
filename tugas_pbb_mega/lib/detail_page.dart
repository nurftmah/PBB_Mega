import 'package:flutter/material.dart';
import 'package:tugas_pbb_mega/halaman3.dart';
import 'package:tugas_pbb_mega/home_page.dart';

class DetailPage extends StatelessWidget {
  final String nama;
  final String umur;
  const DetailPage({super.key, required this.nama, required this.umur});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman 2'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Selamat Datang $nama"),
            SizedBox(height: 10),
            Text("Umur Saya $umur"),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: (){
                Navigator.pop(
                  context, MaterialPageRoute(builder: (context) =>
                  HomePage()),
                );
              },
               child: Text('Kembali ke halaman sebelumnya'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>
                  Halaman3()),
                );
              },
               child: Text('Pergi ke halaman 3'),
              ),
          ],
        ),
      ),
    );
  }
}