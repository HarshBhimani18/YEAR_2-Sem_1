import 'package:Flutter_project/dashboard/dashboard_screen.dart';
import 'package:Flutter_project/database/my_database.dart';
import 'package:flutter/material.dart';
import 'package:Flutter_project/design/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Matrimony App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFE91E63),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFFE91E63),
          secondary: Color(0xFFFFC107),
        ),
        fontFamily: 'Roboto',
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Color(0xFFE91E63),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32.0),
            ),
          ),
        ),
      ),
      home: FutureBuilder(
        future: MyDatabase().initDatabase(),
        builder: (context, snapshot) {
          return snapshot.hasData
              ? DashboardScreen()
              : const Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFE91E63)),
            ),
          );
        },
      ),
    );
  }
}