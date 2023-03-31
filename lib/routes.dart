import 'package:flutter/material.dart';
import 'package:variable_entorno/view/home.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/home': (BuildContext context) => const Home(),
  };
}
