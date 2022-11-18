import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto_2/ControladoresGenerales/controladores.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class misProductos extends StatefulWidget {
  const misProductos({super.key});

  @override
  State<misProductos> createState() => _misProductosState();
}

class _misProductosState extends State<misProductos> {
  controladoresGenerales Control = Get.find();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Obx(() => Container(
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: Control.pro.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Control.pro[index].cantidad == 0
                          ? Text("")
                          : ListTile(
                              leading: Image(
                                  image:
                                      NetworkImage(Control.pro[index].imagen)),
                              title: Text(Control.pro[index].nombre),
                              subtitle: Text("Percio: " +
                                  Control.pro[index].precio.toString() +
                                  " Cantidad: " +
                                  Control.pro[index].cantidad.toString()),
                              trailing: Text((Control.pro[index].cantidad *
                                      Control.pro[index].precio)
                                  .toString()),
                            );
                    },
                  ),
                ),
                Divider(),
                Text("Total a pagar: " + Control.calcularTotal().toString(),
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                Divider(),
                ElevatedButton.icon(
                    onPressed: () {
                      Alert(
                          type: AlertType.success,
                          context: context,
                          title: "Atención",
                          desc: "Tu compra ha sido realizada con exito!",
                          buttons: [
                            DialogButton(
                                child: Text("OK"),
                                onPressed: () {
                                  Control.limpiarTodos();
                                  Navigator.pop(context);
                                  Control.cambiarPosicion(0);
                                })
                          ]).show();
                    },
                    icon: Icon(Icons.payment),
                    label: Text("Pagar"))
              ],
            ),
          )),
    );
  }
}
