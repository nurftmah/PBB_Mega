import 'package:flutter/material.dart';
import 'package:tugas_pbb_mega/listViewBuilder.dart';
import 'package:tugas_pbb_mega/lthn_listNgrid.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Aplikasi Pribadi",
      debugShowCheckedModeBanner: false,
      home: ListViewBuilder()
    );
  }
}
