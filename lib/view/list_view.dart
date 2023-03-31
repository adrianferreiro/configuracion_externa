import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:variable_entorno/view_model/conexion_view_model.dart';

class ListViewConfiguracion extends StatelessWidget {
  const ListViewConfiguracion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List view Configuracion')),
      body: Consumer<ConfiguracionViewModel>(
        builder: (context, model, child) {
          return model.cargando
              ? const Center(child: CircularProgressIndicator())
              : Container(
                  alignment: Alignment.center,
                  child: ListView(
                    shrinkWrap: true,
                    children: model.mapaConfiguracion.entries
                        .map((entry) => ListTile(
                              title: Text(entry.key),
                              subtitle: Text(entry.value.toString()),
                            ))
                        .toList(),
                  ),
                );
        },
      ),
    );
  }
}
