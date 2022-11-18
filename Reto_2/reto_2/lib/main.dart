import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto_2/ControladoresGenerales/controladores.dart';
import 'package:reto_2/ui/home.dart';

void main() {
  Get.put(controladoresGenerales());
  runApp(const MyApp());
}
