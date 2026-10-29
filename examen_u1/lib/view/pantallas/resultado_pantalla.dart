import 'package:flutter/material.dart';
import '../../model/envio_model.dart';
import '../../theme/colores_app.dart';
import '../widgets/atomos/boton_accion.dart';
import '../widgets/moleculas/encabezado.dart';

class ResultadoPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final envio = ModalRoute.of(context)!.settings.arguments as EnvioModel;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(22),
          child: Column(
            children: [
              Encabezado(titulo: 'Detalle del envío', subtitulo: 'Resumen de tu cotización'),
              SizedBox(height: 28),
              Icon(Icons.check_circle_outline, size: 76, color: ColoresApp.principal),
              SizedBox(height: 12),
              Text('Cotización realizada', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: ColoresApp.texto)),
              SizedBox(height: 22),
              Card(
                color: ColoresApp.superficie,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(children: [
                    ListTile(title: Text('Peso'), trailing: Text('${envio.peso} kg')),
                    ListTile(title: Text('Distancia'), trailing: Text('${envio.distancia} km')),
                    Divider(),
                    ListTile(title: Text('Costo base'), trailing: Text('\$${envio.costoBase.toStringAsFixed(2)}')),
                    ListTile(title: Text('Recargo'), trailing: Text('\$${envio.recargo.toStringAsFixed(2)}')),
                    Divider(),
                    ListTile(
                      title: Text('TOTAL', style: TextStyle(fontWeight: FontWeight.bold, color: ColoresApp.principalOscuro)),
                      trailing: Text('\$${envio.total.toStringAsFixed(2)}', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: ColoresApp.principalOscuro)),
                    ),
                  ]),
                ),
              ),
              SizedBox(height: 24),
              BotonAccion(texto: 'Nueva cotización', icono: Icons.arrow_back, onPressed: () { Navigator.pop(context); }),
            ],
          ),
        ),
      ),
    );
  }
}
