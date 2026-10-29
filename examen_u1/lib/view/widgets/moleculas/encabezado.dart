import 'package:flutter/material.dart';
import '../atomos/boton_regresar.dart';
import '../../../theme/colores_app.dart';

class Encabezado extends StatelessWidget {
  final String titulo;
  final String subtitulo;

  Encabezado({
    super.key,
    required this.titulo,
    required this.subtitulo,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BotonRegresar(),
        SizedBox(width: 15),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titulo,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: ColoresApp.texto,
                ),
              ),
              Text(
                subtitulo,
                style: TextStyle(
                  color: ColoresApp.textoSecundario,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}