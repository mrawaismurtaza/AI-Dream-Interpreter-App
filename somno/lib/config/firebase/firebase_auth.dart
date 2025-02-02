import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Sign up with email and password
  Future<String?> signUpWithEmailPassword({
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    if (password != confirmPassword) {
      return "Passwords do not match!";
    }

    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return "Signup Successful!";
    } on FirebaseAuthException catch (e) {
      return e.message; // Return Firebase error message
    }
  }

  /// ✅ Login Function
  Future<String?> loginWithEmailPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return "Login Successful!";
    } on FirebaseAuthException catch (e) {
      return e.message; // Return Firebase error message
    }
  }
}
