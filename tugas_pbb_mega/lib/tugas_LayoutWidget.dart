import 'package:flutter/material.dart';

class LayoutWidget extends StatelessWidget {
  const LayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Saya'),//Judul Appbar
      ),
      body: const Column(
        children:[
          CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('images/profilmg.jpeg'
          ),
           ), //Avatar Bulat 

          SizedBox(height: 10),//Spasi Vertikal

          //Judul Utama
          Text(
            'Mega Nur Fatimah',
            style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),

          //Subjudul
          Text(
            'Siswa SMK YPC',
             style: TextStyle(color: Color.fromARGB(255, 234, 98, 144),),
          ),
          
          SizedBox(height: 10),//Spasi Sebelum Icon

          //Baris Icon dan Label
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(children: [Icon(Icons.call),Text('Call')]),
              Column(children: [Icon(Icons.map),Text('Route')]),
              Column(children: [Icon(Icons.share),Text('Share')]),
            ],
          ),
        ],
      ),
    );
  }
}