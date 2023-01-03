import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RandomController {
  ValueNotifier randomVerse = ValueNotifier([]);
  ValueNotifier inLoad = ValueNotifier(false);

  callApi() async {
    var client = http.Client();
    try {
      inLoad.value = true;
      var response = await client.get(
          Uri.parse('https://www.abibliadigital.com.br/api/verses/nvi/random'));
      var res = jsonDecode(response.body);
      randomVerse.value = res;
    } finally {
      client.close();
      inLoad.value = false;
    }
  }
}
