import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:stuped_test/authentication/login.dart';

void main() async {
  runApp(MaterialApp(
    theme: ThemeData(),
    home: const LoginPage(),
  ));
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}
