import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto_2/ControladoresGenerales/controladores.dart';
import 'package:reto_2/ui/acercaDe.dart';
import 'package:reto_2/ui/comprar.dart';
import 'package:reto_2/ui/inicio.dart';
import 'package:reto_2/ui/menu.dart';
import 'package:reto_2/ui/misProductos.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Reto 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Carrito De Compras.'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List paginas = [
  inicio(),
  comprar(),
  misProductos(),
  acercaDe(),
];

class _MyHomePageState extends State<MyHomePage> {
  controladoresGenerales Control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: menu(),
      body: Obx(() => paginas[Control.posicionPagina]),
    );
  }
}
