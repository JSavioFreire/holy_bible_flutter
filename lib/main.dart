import 'package:flutter/material.dart';
import 'package:holy_bible_flutter/page/home/home_page.dart';
import 'package:holy_bible_flutter/page/login/login_page.dart';
import 'package:holy_bible_flutter/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bíblia Sagrada',
      theme: theme,
      initialRoute: '/home',
      routes: {
        '/login' : (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
