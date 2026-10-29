import 'package:flutter/material.dart';
import '../model/envio_model.dart';

class EnvioViewmodel extends ChangeNotifier {
  EnvioModel? ultimoEnvio;

  EnvioModel calcular(double peso, double distancia) {
    double precioKg = 2;
    if (peso > 5) {
      precioKg = 3;
    }

    double costoBase = peso * precioKg;
    double recargo = 0;
    if (distancia > 100) {
      recargo = costoBase * 0.10;
    }
    double total = costoBase + recargo;

    ultimoEnvio = EnvioModel(
      peso: peso,
      distancia: distancia,
      costoBase: costoBase,
      recargo: recargo,
      total: total,
    );
    notifyListeners();
    return ultimoEnvio!;
  }

  void limpiar() {
    ultimoEnvio = null;
    notifyListeners();
  }
}
