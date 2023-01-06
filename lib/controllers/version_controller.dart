import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:holy_bible_flutter/model/version.dart';
import 'package:http/http.dart' as http;

class VersionController {
  ValueNotifier version = ValueNotifier([]);
  ValueNotifier inLoadVersion = ValueNotifier(false);

  callApi() async {
    var client = http.Client();
    try {
      inLoadVersion.value = true;
      var response = await client.get(
          Uri.parse('https://www.abibliadigital.com.br/api/versions'));
      var res = jsonDecode(response.body);
        var resData = res as List;
      version.value = resData.map((e) => VersionsModel.fromJson(e)).toList();
    } finally {
      client.close();
      inLoadVersion.value = false;
    }
  }
}
