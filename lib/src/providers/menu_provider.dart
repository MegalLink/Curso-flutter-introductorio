import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider {
  List<dynamic> opciones = [];

  Future<List<dynamic>> cargarData() async {
    await rootBundle.loadString('assets/data/menu_opts.json').then((data) {
      Map dataMap = json.decode(data);
      opciones = dataMap['rutas'];
    });
    return opciones;
  }
}

final menuProvider = new _MenuProvider();
