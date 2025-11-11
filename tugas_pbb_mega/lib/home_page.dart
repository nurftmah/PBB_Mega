import 'package:flutter/material.dart';
import 'package:tugas_pbb_mega/detail_page.dart';
import 'package:tugas_pbb_mega/halaman3.dart';

class HomePage extends StatelessWidget {
  final String nama ="Mega Nur Fatimah";
  final String umur = "16";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman 1'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>
                  DetailPage(nama: nama, umur: umur)),
                );
              },
               style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown
               ),
               child: Text('Pergi ke halaman 2', style: TextStyle(color: Colors.white),)
              ),
              SizedBox(height: 10),
              ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>
                  Halaman3()),
                );
              },
               style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown
               ),
               child: Text('Pergi ke halaman 3', style: TextStyle(color: Colors.white)),
              ),
          ],
        ),
      ),
    );
  }
}