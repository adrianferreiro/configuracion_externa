// ignore_for_file: non_constant_identifier_names

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:variable_entorno/variables_globales.dart';

Future gestionar_configuracion({
  required String accion,
  required String pass,
}) async {
  try {
    final response = await http.post(
      Uri.parse('$urlGlobal/config.php'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'accion': accion,
        'password': pass,
      }),
    );
    final respuestaJson = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return respuestaJson;
    } else {
      return 'Error 200';
    }
  } on SocketException {
    return 'No hay internet';
  } on HttpException {
    return 'Error http.';
  } on FormatException {
    //print("Bad response format 👎");
    return 'Error de formato';
  }
}
