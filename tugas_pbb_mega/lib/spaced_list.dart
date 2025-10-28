import 'package:flutter/material.dart';

class SpacedList extends StatelessWidget {
  const SpacedList({super.key});

  @override
  Widget build(BuildContext context) {
    int itemCount = 4;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'List Panjang',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255)
            ),
        ),
        backgroundColor: const Color.fromARGB(255, 148, 98, 80),
        // centerTitle: false,
      ),
      body: LayoutBuilder( //tinggi maksimum parent (induk)
        builder: (context, constraints){
          return SingleChildScrollView( //agar bisa discroll
           child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: List.generate(
                itemCount, (index) => Card(
                  color: const Color.fromARGB(255, 180, 134, 118),
                  margin: const EdgeInsets.all(16),
                  child: SizedBox(
                    height: 100,
                    child: Center(
                      child: Text(
                      'Item $index',
                      style: TextStyle(color: Colors.white),
                    ),
                    ),
                  ),
                )
              ),
            ),
            ),
          );
        }
      ),
    );
  }
}