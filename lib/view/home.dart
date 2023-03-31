import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:variable_entorno/view/data_table.dart';
import 'package:variable_entorno/view/list_tile.dart';
import 'package:variable_entorno/view/list_view.dart';
import 'package:variable_entorno/view_model/conexion_view_model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();

    final myNotifier =
        Provider.of<ConfiguracionViewModel>(context, listen: false);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      myNotifier.obtenerConfiguracion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Variables de entorno'),
      ),
      body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                child: const Text('ListView'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ListViewConfiguracion(),
                    ),
                  );
                },
              ),
              TextButton(
                child: const Text('DataTable'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DataTableConfiguracion(),
                    ),
                  );
                },
              ),
              TextButton(
                child: const Text('ListTile'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ListTileConfiguracion(),
                    ),
                  );
                },
              ),
            ],
          )),
    );
  }
}
