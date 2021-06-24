import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

Future cargaData() async {
  List jsonResponse = [];
  try {
    var url = Uri.http('192.168.0.2:8090', '/alumnos');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      jsonResponse = convert.jsonDecode(response.body);
    } else {
      print('La petición falló con estatus: ${response.statusCode}.');
      return jsonResponse;
    }
    return jsonResponse;
  } catch (e) {
    print(e);
    return jsonResponse;
  }
}
