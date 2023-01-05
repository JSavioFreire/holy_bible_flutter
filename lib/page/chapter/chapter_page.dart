import 'package:flutter/material.dart';
import 'package:holy_bible_flutter/widgets/appbar/app_bar.dart';
import 'package:holy_bible_flutter/widgets/drawer/drawer.dart';

class ChapterPage extends StatelessWidget {
  const ChapterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final arg = (ModalRoute.of(context)?.settings.arguments ?? {}) as Map;

    return Scaffold(
      appBar: const CustomAppBar(),
      endDrawer: const CustomDrawer(),
      body: Text('coisa'),
    );
  }
}
