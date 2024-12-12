import 'package:flutter/material.dart';

class UnderConstructionPage extends StatelessWidget {
  const UnderConstructionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'asset/images/undraw_tree_swing_re_pqee.jpg', 
              height: 300.0,
              width: 300.0,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 10),
            const Text(
              "Halaman Sedang Diulik Dikarenakan Developernya masih Beginner",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); 
              },
              child: const Text("Kembali"),
            )
          ],
        ),
      ),
    );
  }
}