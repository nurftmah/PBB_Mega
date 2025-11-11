import 'package:flutter/material.dart';
import 'package:tugas_pbb_mega/form_validation.dart';

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
      home: FormValidation()
    );
  }
}
