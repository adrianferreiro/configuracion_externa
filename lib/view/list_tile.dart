import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:variable_entorno/view_model/conexion_view_model.dart';

class ListTileConfiguracion extends StatelessWidget {
  const ListTileConfiguracion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CARD Configuracion')),
      body: Consumer<ConfiguracionViewModel>(
        builder: (context, model, child) {
          return model.cargando
              ? const Center(child: CircularProgressIndicator())
              : Container(
                  child: Card(
                    child: ListTile(
                      title: Text(model.mapaConfiguracion['API_URL']),
                      subtitle:
                          Text(model.mapaConfiguracion['API_URL'].toString()),
                    ),
                  ),
                );
        },
      ),
    );
  }
}
