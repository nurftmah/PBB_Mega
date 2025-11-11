import 'package:flutter/material.dart';
import 'package:tugas_pbb_mega/detail_page.dart';

class FormValidation extends StatefulWidget {
  const FormValidation({super.key});

  @override
  State<FormValidation> createState() => _FormValidationState();
}

class _FormValidationState extends State<FormValidation> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController umurController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Form Vlidation'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(label: Text('Nama'), hint: Text('Masukkan Nama')),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama tidak boleh kosong';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: umurController,
                decoration: InputDecoration(label: Text('Umur'), hint: Text('Masukkan Umur')),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Umur tidak bolehh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  if(_formKey.currentState!.validate()) {
                    String name = nameController.text;
                    String umur = umurController.text;
                     
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) =>
                      DetailPage(nama: name, umur: umur)),
                    );

                    // ScaffoldMessenger.of(
                    //   context
                    // ).showSnackBar(SnackBar(content: Text(name)));
                  }
                }, child: Text('Submit'))
            ],
          )
          ),
        ),
    );
  }
}