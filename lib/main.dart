import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:stuped_test/authentication/login.dart';

void main() async {
  runApp(MaterialApp(
    theme: ThemeData(
        textTheme: const TextTheme(
            titleSmall: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
            bodyMedium: TextStyle(fontSize: 16, color: Colors.black54),
            titleMedium: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.black))),
    home: const LoginPage(),
  ));
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}
