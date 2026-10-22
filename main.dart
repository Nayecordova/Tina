
// 3. Función principal Main
void main() {
  IngresoBodega bodega = IngresoBodega();

  print('=== SISTEMA DE INGRESO A BODEGA (DART) ===');

  String? continuar = 's';
  while (continuar != null && continuar.toLowerCase() == 's') {
    stdout.write('\nIngrese el destino de la tina (Venta / Desperdicio): ');
    String destino = stdin.readLineSync() ?? 'Venta';

    double peso = 0;
    if (destino.toLowerCase() == 'venta') {
      stdout.write('Ingrese el peso neto de la tina en kg: ');
      peso = double.parse(stdin.readLineSync() ?? '0');
    }

    // Instanciación del objeto Tina y registro en bodega
    Tina tina = Tina(peso, destino);
    bodega.registrarTina(tina);

    stdout.write('¿Desea registrar otra tina? (s/n): ');
    continuar = stdin.readLineSync();
  }

  // Generación del reporte final
  bodega.generarInforme();
}