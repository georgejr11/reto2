import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:reto_2/clases/productos.dart';

class controladoresGenerales extends GetxController {
  final _posicionPagina = 0.obs;
  final pro = <productos>[].obs;

  @override
  void onInit() {
    pro.add(productos(
        1,
        "Cama para perro 1m diametro",
        "https://falabella.scene7.com/is/image/FalabellaCO/35736939_1?wid=1500&hei=1500&qlt=70",
        0,
        95000));
    pro.add(productos(
        3,
        "Dispensador de Bolsas",
        "https://falabella.scene7.com/is/image/FalabellaCO/17414286_1?wid=1500&hei=1500&qlt=70",
        0,
        22000));
    pro.add(productos(
        3,
        "Collar rastreador GPS",
        "https://falabella.scene7.com/is/image/FalabellaCO/44575208_1?wid=1500&hei=1500&qlt=70",
        0,
        180000));
    pro.add(productos(
        3,
        "Maleta Morral Cápsula para Perros O Gatos",
        "https://falabella.scene7.com/is/image/FalabellaCO/40210847_1?wid=1500&hei=1500&qlt=70",
        0,
        70000));
    pro.add(productos(
        3,
        "Correa para perro rosada",
        "https://falabella.scene7.com/is/image/FalabellaCO/22937323_1?wid=1500&hei=1500&qlt=70",
        0,
        35000));
    pro.add(productos(
        3,
        "Tasa para agua metalica",
        "https://falabella.scene7.com/is/image/FalabellaCO/17440425_1?wid=1500&hei=1500&qlt=70",
        0,
        28000));
    // TODO: implement onInit
    super.onInit();
  }

  void cambiarPosicion(int x) {
    _posicionPagina.value = x;
  }

  int get posicionPagina => _posicionPagina.value;

  void cambiarCantidad(int posicion, int valor) {
    pro[posicion].cantidad = valor;
  }

  int calcularTotal() {
    int total = 0;
    for (int i = 0; i < pro.length; i++) {
      total += pro[i].cantidad * pro[i].precio;
    }
    return total;
  }

  void limpiarTodos() {
    for (int i = 0; i < pro.length; i++) {
      pro[i].cantidad = 0;
    }
    calcularTotal();
  }
}
