import 'package:flutter/material.dart';
import 'home.dart'; // Importamos la pantalla

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix App',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const HomePage(), // Mostramos HomePage
    );
  }
}
