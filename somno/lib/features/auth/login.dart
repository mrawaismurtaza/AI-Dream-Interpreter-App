import 'package:flutter/material.dart';
import 'package:somno/config/routes/routes.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Image.asset('assets/Logo/Somno Logo Blue Shade Version (2).png'),
          ),
        ],
      ),
    );
  }
}