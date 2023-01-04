import 'package:flutter/material.dart';
import 'package:holy_bible_flutter/widgets/appbar/app_bar.dart';
import 'package:holy_bible_flutter/widgets/drawer/drawer.dart';
import 'package:holy_bible_flutter/widgets/random/random_verse.dart';

class RandomPage extends StatelessWidget {
  const RandomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(),
        endDrawer: const CustomDrawer(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: Column(
            children: const [RandomVerse()],
          ),
        ));
  }
}
