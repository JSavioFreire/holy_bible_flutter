import 'package:flutter/material.dart';
import 'package:holy_bible_flutter/widgets/books/books.dart';
import '../../widgets/appbar/app_bar.dart';
import '../../widgets/drawer/drawer.dart';

class BookPage extends StatelessWidget {
  const BookPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomAppBar(), endDrawer: CustomDrawer(), body: Books());
  }
}