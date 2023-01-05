import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AllChapterController {
  ValueNotifier chapter = ValueNotifier([]);
  ValueNotifier inLoadChapter = ValueNotifier(true);

  callApi(e, e2) async {
    var client = http.Client();
    try {
      var response = await client.get(
          Uri.parse('https://www.abibliadigital.com.br/api/verses/nvi/$e/$e2'));
      var res = jsonDecode(response.body);
      chapter.value = res;
    } finally {
      client.close();
      inLoadChapter.value = false;
    }
  }
}
