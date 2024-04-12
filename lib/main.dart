import 'package:flutter/material.dart';
import 'package:to_do/screens/task_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDoom',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          primary: const Color(0xff635985),
          onPrimary: const Color(0xff393053),
          secondary: const Color(0xff18122B),
          seedColor: const Color(0xff18122B),
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Color(0xff635985),
          ),
          labelLarge: TextStyle(
              color: Color(0xff18122B),
              fontSize: 32,
              fontWeight: FontWeight.bold),
          labelSmall: TextStyle(
              color: Color(0xff18122B),
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
      ),
      home: const TaskScreen(),
    );
  }
}
