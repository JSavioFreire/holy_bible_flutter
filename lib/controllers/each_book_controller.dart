import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class EachBookController {
  ValueNotifier eachBook = ValueNotifier([]);
  ValueNotifier inLoadBook = ValueNotifier(true);

  callApi(e) async {
    var client = http.Client();
    try {
      var response = await client
          .get(Uri.parse('https://www.abibliadigital.com.br/api/books/$e'));
      var res = jsonDecode(response.body);
      eachBook.value = res;
    } finally {
      client.close();
      inLoadBook.value = false;
    }
  }
}
