import 'package:flutter/material.dart';

// ignore: camel_case_types
class register extends StatefulWidget {
  const register({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _registerState createState() => _registerState();
}

// ignore: camel_case_types
class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 120, top: 90),
            child: const Text(
              'DAFTAR YUK',
              style: TextStyle(
                color: Colors.black,
                fontSize: 33,
              ),
              textAlign: TextAlign.center, // Menyetel teks ke alignment tengah
            ),
          ),
          Positioned(
            top: 0,
            bottom: 300,
            left: 100,
            child: Center(
              child: Image.asset(
                'asset/images/undraw_authentication_re_svpt.jpg',
                height: 250,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.49,
                left: 20,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Teks "Email" di atas kotak input
                  const Padding(
                    padding: EdgeInsets.only(
                      bottom: 8.0,
                      left: 20,
                    ), // Jarak antara teks "Email" dan kotak input
                    child: Text(
                      "NAMA",
                      style: TextStyle(
                        fontSize: 18, // Ukuran font teks "Email"
                        fontWeight: FontWeight.bold, // Ketebalan teks
                      ),
                    ),
                  ),

                  TextField(
                    decoration: InputDecoration(
                      hintText: "Masukan Nama Lengkap Anda",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      contentPadding:
                          const EdgeInsets.only(left: 20, right: 16),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  // Teks "Password" di atas kotak input
                  const Padding(
                    padding: EdgeInsets.only(
                      bottom: 8.0,
                      left: 20,
                    ), // Jarak antara teks "Password" dan kotak input
                    child: Text(
                      "EMAIL",
                      style: TextStyle(
                        fontSize: 18, // Ukuran font teks "Password"
                        fontWeight: FontWeight.bold, // Ketebalan teks
                      ),
                    ),
                  ),

                  TextField(
                    decoration: InputDecoration(
                      hintText: "Masukan Email Anda",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      contentPadding:
                          const EdgeInsets.only(left: 20, right: 16),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  // Teks "Password" di atas kotak input
                  const Padding(
                    padding: EdgeInsets.only(
                      bottom: 8.0,
                      left: 20,
                    ), // Jarak antara teks "Password" dan kotak input
                    child: Text(
                      "Kata Sandi",
                      style: TextStyle(
                        fontSize: 18, // Ukuran font teks "Password"
                        fontWeight: FontWeight.bold, // Ketebalan teks
                      ),
                    ),
                  ),

                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.grey,
                      hintText: "Masukan Kata Sandi Anda",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      contentPadding:
                          const EdgeInsets.only(left: 20, right: 16),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'login');
                        },
                        child: const Text(
                          'Log In',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                            color: Color(0xff4c505b),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: const Color(0xff6C63FE),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'perbaikan');
                          },
                          icon: const Icon(Icons.arrow_forward),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
