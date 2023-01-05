import 'package:flutter/material.dart';
import 'package:holy_bible_flutter/controllers/each_book_controller.dart';

class Chapter extends StatelessWidget {
  final String abbrev;
  const Chapter(this.abbrev, {super.key});

  @override
  Widget build(BuildContext context) {
    final EachBookController eachBookController = EachBookController();
    eachBookController.callApi(abbrev);
    return Padding(
      padding: const EdgeInsets.all(4),
      child: AnimatedBuilder(
          animation: Listenable.merge(
              [eachBookController.eachBook, eachBookController.inLoadBook]),
          builder: ((_, __) => eachBookController.inLoadBook.value
              ? const Center(child: CircularProgressIndicator())
              : Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 10),
                      child: Column(
                        children: [
                          Text(
                            eachBookController.eachBook.value['name'],
                            style: const TextStyle(fontSize: 30),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 30),
                            child: Text('Escolha o capítulo'),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 5,
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 10),
                          itemCount:
                              eachBookController.eachBook.value['chapters'],
                          itemBuilder: ((_, index) => ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Theme.of(context).primaryColor),
                              onPressed: (() => {
                                    Navigator.pushNamed(
                                      context,
                                      '/chapter',
                                      arguments: {
                                        'abbrev': eachBookController
                                            .eachBook.value['abbrev'],
                                        'chapter': index + 1
                                      },
                                    )
                                  }),
                              child: Text('${index + 1}')))),
                    ),
                    eachBookController.eachBook.value['comment'] == ''
                        ? const Text(
                            'Ainda não temos comentários sobre esse livro.')
                        : ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Theme.of(context).primaryColor),
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                '/aboutbooks',
                                arguments: {
                                  'comment': eachBookController
                                      .eachBook.value['comment'],
                                  'name':
                                      eachBookController.eachBook.value['name']
                                },
                              );
                            },
                            child: const Text('Anotações desse livro.'))
                  ],
                ))),
    );
  }
}
