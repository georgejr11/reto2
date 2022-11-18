import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto_2/ControladoresGenerales/controladores.dart';

class comprar extends StatefulWidget {
  const comprar({super.key});

  @override
  State<comprar> createState() => _comprarState();
}

class _comprarState extends State<comprar> {
  controladoresGenerales Control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Obx(() => ListView.builder(
              itemCount: Control.pro.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading:
                      Image(image: NetworkImage(Control.pro[index].imagen)),
                  title: Text(Control.pro[index].nombre +
                      " | " +
                      Control.pro[index].precio.toString()),
                  trailing: Text(Control.pro[index].cantidad.toString(),
                      style: TextStyle(fontSize: 30)),
                  subtitle: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            int nuevaCantidad = Control.pro[index].cantidad - 1;
                            if (nuevaCantidad < 0) {
                              nuevaCantidad = 0;
                            }
                            Control.cambiarCantidad(index, nuevaCantidad);
                            Control.pro.refresh();
                          },
                          icon: Icon(Icons.arrow_downward_rounded)),
                      VerticalDivider(),
                      IconButton(
                          onPressed: () {
                            int nuevaCantidad = Control.pro[index].cantidad + 1;
                            Control.cambiarCantidad(index, nuevaCantidad);
                            Control.pro.refresh();
                          },
                          icon: Icon(Icons.arrow_upward_rounded)),
                    ],
                  ),
                );
              },
            )),
      ),
    );
  }
}
