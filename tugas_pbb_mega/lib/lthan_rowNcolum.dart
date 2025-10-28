import 'package:flutter/material.dart';
class LthanRowncolum extends StatelessWidget {
  const LthanRowncolum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : const Text('Profil Saya', style: TextStyle(color: Colors.white),),
        backgroundColor: const Color.fromARGB(255, 184, 176, 69),
      ),
      backgroundColor: const Color.fromARGB(255, 231, 224, 126),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Center(
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(500),
            child: Image.asset('images/profil.jpeg', width: 100),
          )
        ),
        const SizedBox(height: 10),
        const Text('Mega Nur Fatimah', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
        const SizedBox(height: 5),
        const Text('Siswa SMK YPC', style: TextStyle(fontSize: 10),),
        const SizedBox(height: 10),


         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            ElevatedButton.icon(onPressed: () {},icon:  Icon(Icons.call, color: Colors.white,), label: Text('Call', style: TextStyle(color: Colors.white),), 
            style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(const Color.fromARGB(255, 184, 176, 69),)),),
            SizedBox(width: 20),
            ElevatedButton.icon(onPressed: () {},icon: Icon(Icons.map, color:Colors.white,), label: Text('Route', style: TextStyle(color: Colors.white)),
            style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(const Color.fromARGB(255, 184, 176, 69),))),
            SizedBox(width: 20,),
            ElevatedButton.icon(onPressed: () {},icon: Icon(Icons.share, color: Colors.white,), label: Text('Share',style: TextStyle(color: Colors.white)),
            style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(const Color.fromARGB(255, 184, 176, 69),))),
          ],
        ),
        ],
      ),
    );
  }
}