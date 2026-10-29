import 'package:flutter/material.dart';

class CampoTexto extends StatelessWidget {
  final String etiqueta;
  final TextEditingController controlador;
  final IconData icono;

  CampoTexto({
    required this.etiqueta,
    required this.controlador,
    required this.icono,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controlador,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: etiqueta,
        prefixIcon: Icon(icono),
        border: OutlineInputBorder(),
      ),
    );
  }
}