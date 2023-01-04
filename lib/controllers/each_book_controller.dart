import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class EachBookController {
  ValueNotifier book = ValueNotifier([]);
  ValueNotifier inLoadBooks = ValueNotifier(true);

  callApi(e) async {
    var client = http.Client();
    try {
      var response = await client
          .get(Uri.parse('https://www.abibliadigital.com.br/api/books/$e'));
      var res = jsonDecode(response.body);
      book.value = res;
    } finally {
      client.close();
      inLoadBooks.value = false;
    }
  }
}
