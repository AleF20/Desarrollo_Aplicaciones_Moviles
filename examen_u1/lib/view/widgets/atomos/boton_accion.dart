import 'package:flutter/material.dart';
import '../../../theme/colores_app.dart';

class BotonAccion extends StatelessWidget {
  final String texto;
  final IconData icono;
  final VoidCallback onPressed;

  BotonAccion({
    super.key,
    required this.texto,
    required this.icono,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icono),
      label: Text(texto),
      style: ElevatedButton.styleFrom(
        backgroundColor: ColoresApp.principal,
        foregroundColor: Colors.white,
      ),
    );
  }
}