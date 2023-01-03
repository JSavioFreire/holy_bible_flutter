import 'package:flutter/material.dart';
import 'package:holy_bible_flutter/widgets/appbar/app_bar.dart';
import 'package:holy_bible_flutter/widgets/books/books.dart';
import 'package:holy_bible_flutter/widgets/constVerse/const_verse.dart';
import 'package:holy_bible_flutter/widgets/random/random_verse.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomAppBar(),
        body:  Books());
  }
}
