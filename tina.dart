tina.Dart
import 'dart:io';

// 1. Clase Tina
class Tina {
  // Atributos privados (en Dart el prefijo '_' indica privacidad)
  double _pesoNeto;
  String _tipoDestino; // "Venta" o "Desperdicio"

  // Constructor
  Tina(this._pesoNeto, this._tipoDestino);

  // Método que evalúa el estado de la tina
  String evaluarEstado() {
    if (_tipoDestino.toLowerCase() == 'desperdicio') {
      return 'Desperdicio';
    }

    // Reglas de la báscula de plataforma
    if (_pesoNeto >= 600 && _pesoNeto <= 605) {
      return 'Tina Completa';
    } else if (_pesoNeto < 600) {
      return 'Tina Incompleta';
    } else {
      return 'Tina con Excedente';
    }
  }
}