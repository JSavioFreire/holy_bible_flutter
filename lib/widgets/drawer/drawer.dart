import 'package:flutter/material.dart';
import 'package:holy_bible_flutter/widgets/constVerse/const_verse.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                color: const Color(0xFFCFAA6D),
                width: double.infinity,
                height: 150,
                child: const Center(
                    child: Text(
                  'Bíblia Sagrada',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                )),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Início'),
                onTap: () => {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/home', (Route route) => false)
                },
              ),
              ListTile(
                leading: const Icon(Icons.menu_book),
                title: const Text('Bíblia Sagrada'),
                onTap: () => {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/books', (Route route) => false)
                },
              ),
              ListTile(
                leading: const Icon(Icons.article_rounded),
                title: const Text('Versículo Aleatório'),
                onTap: () => {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      '/random', (Route route) => false)
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Configurações'),
                onTap: () => {Navigator.of(context).pop()},
              ),
            ],
          ),
          const ConstVerse()
        ],
      ),
    );
  }
}
