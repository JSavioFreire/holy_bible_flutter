import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Why extends StatelessWidget {
  const Why({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Por que ler a Bíblia todos os dias?',
            style: TextStyle(fontSize: 24),
          ),
          Text(
              'Ler a Bíblia todos os dias faz com que você adquira mais sabedoria, isso porque ela irá funcionar como um alimento diário do cristão, e assim como um bom alimento deve ser consumido diariamente, a leitura da Bíblia deve ser feita. Quanto mais você se alimentar (ler) a Bíblia, mais você irá ganhar sabedoria.')
        ],
      ),
    );
  }
}
