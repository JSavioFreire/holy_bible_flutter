import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:holy_bible_flutter/widgets/appbar/app_bar.dart';
import 'package:holy_bible_flutter/widgets/drawer/drawer.dart';

class AboutBook extends StatelessWidget {
  const AboutBook({super.key});

  @override
  Widget build(BuildContext context) {
    final arg = (ModalRoute.of(context)?.settings.arguments ?? {}) as Map;

    return Scaffold(
      appBar: const CustomAppBar(),
      endDrawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
          child: Column(
            children: [
              Text(
                'Anotações sobre o livro ${arg['name']}.',
                style: const TextStyle(fontSize: 22),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  arg['comment'],
                  style: const TextStyle(fontSize: 17),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
