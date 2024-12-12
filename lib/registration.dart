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
  bool _isChecked = false;
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _namaFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  bool _isPasswordVisible = false;

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
              textAlign: TextAlign.center,
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
                top: MediaQuery.of(context).size.height * 0.44,
                left: 20,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  
                  const Padding(
                    padding: EdgeInsets.only(
                      bottom: 8.0,
                      left: 20,
                    ), 
                    child: Text(
                      "NAMA",
                      style: TextStyle(
                        fontSize: 18, 
                        fontWeight: FontWeight.bold, 
                      ),
                    ),
                  ),

                  TextField(
                      controller: _namaController,
                      focusNode: _namaFocusNode,
                      decoration: InputDecoration(
                        hintText: "Masukan Nama Lengkap Anda",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        contentPadding:
                            const EdgeInsets.only(left: 20, right: 16),
                      ),
                      onTap: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                      }),
                  const SizedBox(
                    height: 30,
                  ),

                  const Padding(
                    padding: EdgeInsets.only(
                      bottom: 8.0,
                      left: 20,
                    ), 
                    child: Text(
                      "EMAIL",
                      style: TextStyle(
                        fontSize: 18, 
                        fontWeight: FontWeight.bold, 
                      ),
                    ),
                  ),

                  TextField(
                      controller: _emailController,
                      focusNode: _emailFocusNode,
                      decoration: InputDecoration(
                        hintText: "Masukan Email Anda",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        contentPadding:
                            const EdgeInsets.only(left: 20, right: 16),
                      ),
                      onTap: () {
                        FocusScope.of(context).requestFocus(
                            FocusNode()); 
                      }),
                  const SizedBox(
                    height: 30,
                  ),

                  
                  const Padding(
                    padding: EdgeInsets.only(
                      bottom: 8.0,
                      left: 20,
                    ), 
                    child: Text(
                      "Kata Sandi",
                      style: TextStyle(
                        fontSize: 18, 
                        fontWeight: FontWeight.bold, 
                      ),
                    ),
                  ),

                  TextField(
                    controller: _passwordController,
                    focusNode: _passwordFocusNode,
                    obscureText: !_isPasswordVisible,
                    decoration: InputDecoration(
                      fillColor: Colors.grey,
                      hintText: "Masukan Kata Sandi Anda",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      contentPadding:
                          const EdgeInsets.only(left: 20, right: 16),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20, 
                  ),

                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isChecked = !_isChecked;
                          });
                        },
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey),
                            color:
                                _isChecked ? Colors.blue : Colors.transparent,
                          ),
                          child: _isChecked
                              ? const Icon(
                                  Icons.check,
                                  size: 15,
                                  color: Colors.white,
                                )
                              : null,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "Ingat Akun Ini",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
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
