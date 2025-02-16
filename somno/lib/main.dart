import 'package:flutter/material.dart';
import 'package:somno/config/routes/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:somno/features/home/main.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized(); 

await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    User? user = FirebaseAuth.instance.currentUser;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: user == null ? '/login' : '/',
      routes: appRoutes,
    );
  }
}
