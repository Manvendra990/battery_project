import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void showSnackBar(BuildContext contex, String text) {
  ScaffoldMessenger.of(contex).showSnackBar(
    SnackBar(content: Text(text)),
  );
}

void httplater({
  required http.Response response,
  required BuildContext context,
  required VoidCallback onSuccess,
}) {
  switch (response.statusCode) {
    case 200:
      onSuccess();

      break;
    case 400:
      showSnackBar(context, jsonDecode(response.body)['message']);
      break;
    case 500:
      showSnackBar(context, jsonDecode(response.body)['error']);
      break;
    default:
      showSnackBar(context, response.body);
  }
}
