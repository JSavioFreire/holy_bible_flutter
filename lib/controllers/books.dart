import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:holy_bible_flutter/model/books.dart';
import 'package:http/http.dart' as http;

class BookController {
  ValueNotifier books = ValueNotifier([]);
  ValueNotifier inLoadBooks = ValueNotifier(false);

  callApi() async {
    var client = http.Client();
    try {
      inLoadBooks.value = true;
      var response = await client
          .get(Uri.parse('https://www.abibliadigital.com.br/api/books'));
      var res = jsonDecode(response.body);
      var resData = res as List;
      books.value = resData.map((e) => BooksModel.fromJson(e)).toList();
    } finally {
      client.close();
      inLoadBooks.value = false;
    }
  }
}
