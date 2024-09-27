import 'package:portos_pam/TelaPortos.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp (title: "App",
      home: MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Portos de SP 470 anos',
      home: TelaPortos(),
    );
  }
}

