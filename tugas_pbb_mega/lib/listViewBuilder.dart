import 'package:flutter/material.dart';
class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Builder"),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index){
          var nomor = index + 1;
          return ListTile(
            leading: Icon(Icons.person),
            title: Text("Judul $nomor"),
            subtitle: Text("Subjudul"),
          );
        }
      ),
    );
  }
}