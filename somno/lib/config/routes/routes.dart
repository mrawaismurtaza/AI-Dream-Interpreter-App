import 'package:flutter/material.dart';
import 'package:somno/features/auth/login.dart';
import 'package:somno/features/auth/signup.dart';
import 'package:somno/features/home/main.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const HomePage(),
  '/login': (context) => const Login(),
  '/signup': (context) => const Signup(),
};  