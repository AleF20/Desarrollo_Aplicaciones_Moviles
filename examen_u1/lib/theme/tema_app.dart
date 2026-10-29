import 'package:flutter/material.dart';
import 'colores_app.dart';

class TemaApp {
  static ThemeData tema = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: ColoresApp.fondo,
    colorScheme: ColorScheme.fromSeed(seedColor: ColoresApp.principal),
    appBarTheme: AppBarTheme(
      backgroundColor: ColoresApp.fondo,
      foregroundColor: ColoresApp.texto,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColoresApp.principal,
        foregroundColor: Colors.white,
      ),
    ),
  );
}
