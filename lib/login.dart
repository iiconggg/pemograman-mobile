import 'package:flutter/material.dart';

// ignore: camel_case_types
class mylogin extends StatefulWidget {
  const mylogin({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _myloginState createState() => _myloginState();
}

// ignore: camel_case_types
class _myloginState extends State<mylogin> {
  bool _isChecked = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
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
            padding: const EdgeInsets.only(left: 125, top: 100),
            child: const Text(
              'LOGIN YUK',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 3,
                fontSize: 33,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            top: 0,
            bottom: 250,
            left: 80,
            child: Center(
              child: Image.asset(
                'asset/images/undraw_login_re_4vu2.jpg',
                height: 150,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.4,
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
                      "Email",
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
                        FocusScope.of(context).requestFocus(FocusNode());
                      }),
                  const SizedBox(
                    height: 40,
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
                      onTap: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                      }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                                color: _isChecked
                                    ? Colors.blue
                                    : Colors.transparent,
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
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'perbaikan');
                        },
                        child: const Text(
                          'Lupa Kata Sandi?',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 14,
                            color: Color(0xff4c505b),
                          ),
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
                      const Text(
                        'Log In',
                        style: TextStyle(
                          fontSize: 30,
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
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'register');
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 40),
                          decoration: BoxDecoration(
                            color: const Color(0xff6C63FE),
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.transparent),
                          ),
                          child: const Text(
                            'Daftar Akun Baru',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}