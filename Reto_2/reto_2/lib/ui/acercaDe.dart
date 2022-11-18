import 'package:flutter/material.dart';

class acercaDe extends StatefulWidget {
  const acercaDe({super.key});

  @override
  State<acercaDe> createState() => _acercaDeState();
}

class _acercaDeState extends State<acercaDe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person_outlined),
            title: Text("Programación Movil NR2291"),
            subtitle: Text("Grupo 15"),
          ),
          ListTile(
            leading: Icon(Icons.verified_user_rounded),
            title: Text("Versión 1.0."),
            subtitle: Text("Versión"),
          ),
          ListTile(
            leading: Icon(Icons.thumb_up_alt),
            title: Text("Misión TIC y UniNorte."),
            subtitle: Text("Agradecimiento."),
          ),
        ],
      ),
    );
  }
}
