import 'package:flutter/material.dart';
import '../../theme/colores_app.dart';
import '../widgets/atomos/boton_accion.dart';

class InicioPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.local_shipping_rounded, size: 100, color: ColoresApp.principal),
              SizedBox(height: 24),
              Text('VerdeEnvíos', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: ColoresApp.texto)),
              SizedBox(height: 12),
              Text('Calcula el costo de tus envíos de forma rápida y sencilla.', textAlign: TextAlign.center, style: TextStyle(fontSize: 17, color: ColoresApp.textoSecundario)),
              SizedBox(height: 36),
              BotonAccion(
                texto: 'Comenzar',
                icono: Icons.arrow_forward,
                onPressed: () { Navigator.pushNamed(context, '/envio'); },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
