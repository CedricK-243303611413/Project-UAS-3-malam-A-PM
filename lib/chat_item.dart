import 'package:flutter/material.dart';
import 'login_page.dart';

class ChatItem extends StatelessWidget {
  final String nama;
  final String bulan;
  final String status;

  const ChatItem({
    super.key,
    required this.nama,
    required this.bulan,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage(nama: nama)),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.lightBlue.shade100,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.red, width: 2),
        ),
        child: Row(
          children: [
            const CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage('images/avatar.jpeg'),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(nama, style: const TextStyle(fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    const Icon(Icons.check, size: 14),
                    const SizedBox(width: 4),
                    Text(status),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Text(
              bulan,
              style: const TextStyle(
                color: Colors.blue,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
