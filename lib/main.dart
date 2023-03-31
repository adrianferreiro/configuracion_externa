import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:variable_entorno/routes.dart';
import 'package:variable_entorno/view_model/conexion_view_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => ConfiguracionViewModel(),
    ),
  ], child: const MyApp()));
}

Future init() async {}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Figus',
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: getApplicationRoutes(),
    );
  }
}
