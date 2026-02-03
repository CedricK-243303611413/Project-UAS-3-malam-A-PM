import 'package:flutter/material.dart';
import 'chat_item.dart';

void main() {
  runApp(MyPage());
}

class MyPage extends StatelessWidget {
  MyPage({super.key});

  final List<Map<String, String>> data = [
    {"nama": "Cedric Kosasih", "bulan": "Januari", "status": "OTW"},
    {"nama": "Abdul", "bulan": "Februari", "status": "Kerja Kerja Kerja"},
    {"nama": "Ahmad", "bulan": "Maret", "status": "Ngopi Yuk"},
    {"nama": "John", "bulan": "Maret", "status": "Lagi Makan"},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Chat Item")),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return ChatItem(
              nama: data[index]['nama']!,
              bulan: data[index]['bulan']!,
              status: data[index]['status']!,
            );
          },
        ),
      ),
    );
  }
}
