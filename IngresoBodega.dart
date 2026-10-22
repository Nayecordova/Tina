// 2. Clase IngresoBodega
class IngresoBodega {
  // Atributo: Lista de tinas acumuladas
  final List<Tina> _loteTinas = [];

  // Método para registrar una tina en la lista
  void registrarTina(Tina tina) {
    _loteTinas.add(tina);
  }

  // Método que genera y muestra el informe de cierre
  void generarInforme() {
    int completas = 0;
    int incompletas = 0;
    int excedentes = 0;

    for (var t in _loteTinas) {
      String estado = t.evaluarEstado();
      if (estado == 'Tina Completa') completas++;
      if (estado == 'Tina Incompleta') incompletas++;
      if (estado == 'Tina con Excedente') excedentes++;
    }

    print('\n==========================================');
    print('       INFORME DE CIERRE DE INGRESO       ');
    print('==========================================');
    print('- Tinas Completas (600 - 605 kg): $completas');
    print('- Tinas Incompletas (< 600 kg): $incompletas');
    print('- Tinas con Excedente (> 605 kg): $excedentes');
    print('==========================================');
  }
}