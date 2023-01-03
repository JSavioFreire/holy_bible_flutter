import 'package:flutter/material.dart';
import 'package:holy_bible_flutter/controllers/random.dart';

class RandomVerse extends StatelessWidget {
  const RandomVerse({super.key});

  @override
  Widget build(BuildContext context) {
    final RandomController randomController = RandomController();
    randomController.callApi();

    return AnimatedBuilder(
      animation: Listenable.merge(
          [randomController.randomVerse, randomController.inLoad]),
      builder: ((_, __) => randomController.inLoad.value
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    randomController.randomVerse.value['text'].toString(),
                    style: const TextStyle(fontSize: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(randomController.randomVerse.value['book']['name']
                          .toString()),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          randomController.randomVerse.value['chapter']
                              .toString(),
                        ),
                      ),
                      Text(
                        randomController.randomVerse.value['number'].toString(),
                      )
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor),
                    child: const Text('Leia todo o capítulo.'),
                  )
                ],
              ),
            )),
    );
  }
}
