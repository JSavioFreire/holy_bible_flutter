import 'package:flutter/material.dart';

class ConstVerse extends StatelessWidget {
  const ConstVerse({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          Text(
            'E, assim, a fé vem pelo ouvir, e o ouvir, pela palavra de Cristo.',
            style: TextStyle(fontSize: 15),
          ),
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: Text(
              'Romanos 10.17',
              style: TextStyle(fontSize: 12),
            ),
          )
        ],
      ),
    );
  }
}
