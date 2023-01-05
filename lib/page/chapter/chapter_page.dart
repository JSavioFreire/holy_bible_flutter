import 'package:flutter/material.dart';
import 'package:holy_bible_flutter/controllers/all_chapter.dart';
import 'package:holy_bible_flutter/widgets/appbar/app_bar.dart';
import 'package:holy_bible_flutter/widgets/drawer/drawer.dart';

class ChapterPage extends StatelessWidget {
  const ChapterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final arg = (ModalRoute.of(context)?.settings.arguments ?? {}) as Map;
    AllChapterController allChapterController = AllChapterController();
    allChapterController.callApi(arg['abbrev'], arg['chapter']);

    return Scaffold(
        appBar: const CustomAppBar(),
        endDrawer: const CustomDrawer(),
        body: AnimatedBuilder(
            animation: Listenable.merge([
              allChapterController.chapter,
              allChapterController.inLoadChapter
            ]),
            builder: (_, __) => allChapterController.inLoadChapter.value
                ? const Center(child: CircularProgressIndicator())
                : Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Center(
                          child: Text(
                            '${allChapterController.chapter.value['book']['name']} ${allChapterController.chapter.value['chapter']['number']}',
                            style: const TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                            itemCount: allChapterController
                                .chapter.value['verses'].length,
                            itemBuilder: ((context, index) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '${allChapterController.chapter.value['verses'][index]['number']} ${allChapterController.chapter.value['verses'][index]['text']}',
                                  ),
                                ))),
                      )
                    ],
                  )));
  }
}
