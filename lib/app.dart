import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/home_page.dart';
import 'pages/list_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MaterialApp(
      title: "Hands On 02",
      home: const HomePage(),
      routes: {
        "/home": (context) => const HomePage(),
        "/list": (context) => const ListPage(),
      },
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(textTheme)),
      debugShowCheckedModeBanner: false,
    );
  }
}