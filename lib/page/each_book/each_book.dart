import 'package:flutter/material.dart';
import 'package:holy_bible_flutter/controllers/each_book_controller.dart';
import 'package:holy_bible_flutter/widgets/appbar/app_bar.dart';

class EachBook extends StatelessWidget {
  const EachBook({super.key});

  @override
  Widget build(BuildContext context) {
    final arg = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;

    final EachBookController eachBookController = EachBookController();
    eachBookController.callApi(arg['abbrev']);
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              Center(
                child: Text(
                  arg['book'],
                  style: const TextStyle(fontSize: 35),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
