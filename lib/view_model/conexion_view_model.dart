import 'package:flutter/material.dart';
import 'package:variable_entorno/model/services/config.dart';

class ConfiguracionViewModel extends ChangeNotifier {
  bool cargando = false;
  Map<String, dynamic> mapaConfiguracion = {
    'API_URL': 'Vacio',
  };

  Future obtenerConfiguracion() async {
    cargando = true;
    notifyListeners();
    final resultado = await gestionar_configuracion(
      accion: 'obtener_configuracion',
      pass: 'localhost12345674157asdfadf558asdf44asdfasdf6',
    );
    if (resultado != null) {
      mapaConfiguracion = resultado['detalles'];
    }
    cargando = false;
    notifyListeners();
  }
}
