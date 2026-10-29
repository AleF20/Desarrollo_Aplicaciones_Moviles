import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../theme/colores_app.dart';
import '../../view_model/envio_viewmodel.dart';
import '../widgets/atomos/campo_texto.dart';
import '../widgets/atomos/boton_accion.dart';
import '../widgets/moleculas/encabezado.dart';

class EnvioPantalla extends StatefulWidget {
  @override
  State<EnvioPantalla> createState() => _EnvioPantallaState();
}

class _EnvioPantallaState extends State<EnvioPantalla> {
  final pesoController = TextEditingController();
  final distanciaController = TextEditingController();

  void calcular() {
    double? peso = double.tryParse(pesoController.text.replaceAll(',', '.'));
    double? distancia = double.tryParse(distanciaController.text.replaceAll(',', '.'));

    if (peso == null || distancia == null || peso <= 0 || distancia <= 0 || !peso.isFinite || !distancia.isFinite) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Ingrese un peso y una distancia mayores que cero')),
      );
      return;
    }

    final vm = context.read<EnvioViewmodel>();
    final resultado = vm.calcular(peso, distancia);
    Navigator.pushNamed(context, '/resultado', arguments: resultado);
  }

  void limpiar() {
    pesoController.clear();
    distanciaController.clear();
    context.read<EnvioViewmodel>().limpiar();
  }


  @override
  Widget build(BuildContext context) {
    final vm = context.watch<EnvioViewmodel>();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Encabezado(titulo: 'Cotizar envío', subtitulo: 'Ingresa los datos del paquete'),
              SizedBox(height: 24),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(color: ColoresApp.acento, borderRadius: BorderRadius.circular(16)),
                child: Row(children: [
                  Icon(Icons.local_shipping, size: 38, color: ColoresApp.principalOscuro),
                  SizedBox(width: 14),
                  Expanded(child: Text('Cotiza tu paquete de manera sencilla', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: ColoresApp.texto))),
                ]),
              ),
              SizedBox(height: 24),
              CampoTexto(etiqueta: 'Peso del paquete (kg)', icono: Icons.scale, controlador: pesoController),
              SizedBox(height: 16),
              CampoTexto(etiqueta: 'Distancia del envío (km)', icono: Icons.route, controlador: distanciaController),
              SizedBox(height: 18),
              Text('Hasta 5 kg: \$2/kg  •  Más de 5 kg: \$3/kg', style: TextStyle(color: ColoresApp.textoSecundario)),
              Text('Distancia mayor a 100 km: recargo del 10 %', style: TextStyle(color: ColoresApp.textoSecundario)),
              SizedBox(height: 28),
              BotonAccion(texto: 'Calcular costo', icono: Icons.calculate, onPressed: calcular),
              SizedBox(height: 10),
              BotonAccion(texto: 'Limpiar campos', icono: Icons.cleaning_services_outlined, onPressed: limpiar),
            ],
          ),
        ),
      ),
    );
  }
}
