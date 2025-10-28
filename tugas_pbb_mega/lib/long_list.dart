import 'package:flutter/material.dart';
class LongList extends StatelessWidget {
  const LongList({super.key});

  @override
  Widget build(BuildContext context) {
    //data source: 1000 items contoh
    final List<String> items = List<String>.generate(1000, (i) => "Item $i");

    return Scaffold(
      appBar: AppBar(title: Text('Long List'),),
      body: ListView.builder(
        itemCount: items.length,
        prototypeItem: ListTile(title: Text(items.first)),
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.list_alt),
            title: Text(
              items[index],
              style: TextStyle(
                color: index % 10 == 0 ? const Color.fromARGB(255, 14, 78, 131) : const Color.fromARGB(255, 148, 182, 211),
              ),
              ),
          );
        },
        ),
    );
  }
}