import 'package:flutter/material.dart';
import 'package:holy_bible_flutter/controllers/each_book_controller.dart';
import 'package:holy_bible_flutter/widgets/appbar/app_bar.dart';
import 'package:holy_bible_flutter/widgets/chapters/chapters.dart';
import 'package:holy_bible_flutter/widgets/drawer/drawer.dart';

class EachBook extends StatelessWidget {
  const EachBook({super.key});

  @override
  Widget build(BuildContext context) {
    final arg = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;

    return Scaffold(
      appBar: const CustomAppBar(),
      endDrawer: const CustomDrawer(),
      body: Chapter(arg['abbrev']),
    );
  }
}
