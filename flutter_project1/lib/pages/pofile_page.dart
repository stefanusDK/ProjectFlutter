import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue,
              child: Icon(Icons.person, size: 50, color: Colors.white),
            ),
            const SizedBox(height: 12),
            const Text(
              '@jokowidanbasuki',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text('0', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Mengikuti'),
                  ],
                ),
                SizedBox(width: 30),
                Column(
                  children: [
                    Text('0', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Pengikut'),
                  ],
                ),
                SizedBox(width: 30),
                Column(
                  children: [
                    Text('0', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Suka'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Daftar'),
            ),
          ],
        ),
      ),
    );
  }
}