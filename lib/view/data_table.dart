import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:variable_entorno/view_model/conexion_view_model.dart';

class DataTableConfiguracion extends StatelessWidget {
  const DataTableConfiguracion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Data Table Configuracion')),
      body: Consumer<ConfiguracionViewModel>(
        builder: (context, model, child) {
          return model.cargando
              ? const Center(child: CircularProgressIndicator())
              : Container(
                  child: DataTable(
                    columns: [
                      DataColumn(label: Text('API_URL')),
                      //DataColumn(label: Text('Edad')),
                      //DataColumn(label: Text('Dirección')),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text(model.mapaConfiguracion['API_URL'])),
                        /*
                        DataCell(
                            Text(model.mapaConfiguracion['edad'].toString())),
                        DataCell(Text(model.mapaConfiguracion['direccion']
                                ['calle'] +
                            ' ' +
                            model.mapaConfiguracion['direccion']['numero']
                                .toString())),
                      */
                      ]),
                    ],
                  ),
                );
        },
      ),
    );
  }
}
