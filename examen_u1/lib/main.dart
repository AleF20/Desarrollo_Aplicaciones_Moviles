import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme/tema_app.dart';
import 'view_model/envio_viewmodel.dart';
import 'view/pantallas/inicio_pantalla.dart';
import 'view/pantallas/envio_pantalla.dart';
import 'view/pantallas/resultado_pantalla.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => EnvioViewmodel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Envío De Un Paquete',
      theme: TemaApp.tema,
      initialRoute: '/',
      routes: {
        '/': (context) => InicioPantalla(),
        '/envio': (context) => EnvioPantalla(),
        '/resultado': (context) => ResultadoPantalla(),
      },
    );
  }
}
