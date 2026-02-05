import 'package:flutter/material.dart';
import 'chat_item.dart';

void main() {
  runApp(const MyPage());
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  final List<Map<String, String>> data = const [
    {"nama": "Cedric Kosasih", "bulan": "Januari", "status": "OTW"},
    {"nama": "Abdul", "bulan": "Februari", "status": "Kerja Kerja Kerja"},
    {"nama": "Ahmad", "bulan": "Maret", "status": "Ngopi Yuk"},
    {"nama": "John", "bulan": "April", "status": "Lagi Makan"},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.blue,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Aplikasi Chat",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: data.length,
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 5);
                },
                itemBuilder: (context, index) {
                  final item = data[index];

                  return ChatItem(
                    nama: item['nama']!,
                    bulan: item['bulan']!,
                    status: item['status']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
