import 'package:flutter/material.dart';
import 'package:holy_bible_flutter/controllers/books.dart';

class Books extends StatelessWidget {
  const Books({super.key});

  @override
  Widget build(BuildContext context) {
    final BookController bookController = BookController();
    bookController.callApi();

    return Padding(
      padding: const EdgeInsets.all(4),
      child: AnimatedBuilder(
          animation: Listenable.merge(
              [bookController.books, bookController.inLoadBooks]),
          builder: ((_, __) => bookController.inLoadBooks.value
              ? const Center(child: CircularProgressIndicator())
              : GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemCount: bookController.books.value.length,
                  itemBuilder: ((_, index) => TextButton(
                        onPressed: (() => {}),
                        child: GridTile(
                            child: Container(
                                width: double.infinity,
                                color: const Color(0xFFCFAA6D),
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        bookController.books.value[index].name,
                                        style: const TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        'Autor: ${bookController.books.value[index].author}',
                                        style: const TextStyle(
                                            fontSize: 11,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700),
                                      )
                                    ],
                                  ),
                                ))),
                      ))))),
    );
  }
}
