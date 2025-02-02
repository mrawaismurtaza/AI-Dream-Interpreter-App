import 'package:flutter/material.dart';
import 'package:somno/config/routes/routes.dart';

import '../../config/firebase/firebase_auth.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final _auth = Auth();

  Future<void> _login() async {
    final String? response = await _auth.loginWithEmailPassword(
      email: _emailController.text,
      password: _passwordController.text,
    );

    if (response == "Login Successful!") {
      Navigator.pushReplacementNamed(context, '/');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(response!),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFF2836CD),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 100),
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(
                        'assets/Logo/Somno Logo Blue Shade Version (2).png'),
                  ),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              height: Height * 0.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: Width * 0.8,
                    child: TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFF04EEFF),
                        hintText: 'Email',
                        hintStyle: TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: Width * 0.8,
                    child: TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFF04EEFF),
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: Width * 0.8,
                    child: ElevatedButton(
                      onPressed: () {
                        _login();
                      },
                      child: Text('Login',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          )),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        minimumSize: Size(Width * 0.8, 50),
                      ),
                    ),
                  ),
                  Container(
                    child: TextButton(
                      onPressed: () {
                        // Navigator.pushNamed(context, Routes.login);
                      },
                      child: Text('Forgot Password?',
                          style: TextStyle(
                            color: Color(0xFF04EEFF),
                            fontSize: 15,
                            fontWeight: FontWeight.w800,)
                          ),
                    ),
                  ),
                  Container(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: Text('Sign Up',
                          style: TextStyle(
                            color: Color(0xFF04EEFF),
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
