import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:semana7_travel/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.dmSansTextTheme(),
      ),
      home: const HomePage(),
    );
  }
}
