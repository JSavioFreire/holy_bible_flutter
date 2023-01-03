import 'package:flutter/material.dart';
import 'package:holy_bible_flutter/widgets/appbar/app_bar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: TextField(),
    );
  }
}