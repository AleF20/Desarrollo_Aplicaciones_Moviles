import 'package:flutter/material.dart';
import '../../../theme/colores_app.dart';

class BotonRegresar extends StatelessWidget {
  BotonRegresar({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: 'Regresar',
      onPressed: () {
        Navigator.maybePop(context);
      },
      style: IconButton.styleFrom(
        backgroundColor: ColoresApp.acento,
        foregroundColor: ColoresApp.principalOscuro,
        padding: EdgeInsets.all(12),
      ),
      icon: Icon(Icons.arrow_back_rounded),
    );
  }
}
