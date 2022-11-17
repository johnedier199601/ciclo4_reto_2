import 'package:get/get.dart';
import 'package:reto_2/clases/productos.dart';

class controlador_general extends GetxController {
  final _posicion_pagina = 0.obs;
  final Productos = <productos>[].obs;

  @override
  void onInit() {
    Productos.add(productos(
        1,
        "Verduras",
        "https://www.cdc.gov/foodsafety/images/comms/features/GettyImages-1247930626-500px.jpg",
        0,
        70000));
    Productos.add(productos(
        2,
        "Frutas",
        "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/frutas-1552246920.jpg",
        0,
        65000));
    Productos.add(productos(
        3,
        "Pulpas de Frutas",
        "https://morganimportexport.com/wp-content/uploads/2020/10/pulpas.jpg",
        0,
        45000));
    Productos.add(productos(
        4,
        "Frutas y Verduras",
        "https://ingenieriademenu.com/wp-content/uploads/2022/05/Cuales-son-las-frutas-y-cuales-son-las-verduras.jpg",
        0,
        75000));
    super.onInit();
  }

  void cambiar_posicion(int x) {
    _posicion_pagina.value = x;
  }

  int get posicion_pagina => _posicion_pagina.value;

  void cambiar_cantidad(int posicion, int valor) {
    Productos[posicion].cantidad = valor;
  }

  int calcular_total() {
    int total = 0;

    for (int i = 0; i < Productos.length; i++) {
      total = total + Productos[i].cantidad * Productos[i].precio;
    }
    return total;
  }

  void limpiar_todo() {
    for (int i = 0; i < Productos.length; i++) {
      Productos[i].cantidad = 0;
    }
    calcular_total();
  }
}
