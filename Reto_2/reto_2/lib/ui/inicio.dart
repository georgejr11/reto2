import 'package:flutter/material.dart';

class inicio extends StatefulWidget {
  const inicio({super.key});

  @override
  State<inicio> createState() => _inicioState();
}

class _inicioState extends State<inicio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Image(
              image: NetworkImage(
                  "https://falabella.scene7.com/is/image/FalabellaCO/35415970_1?wid=1500&hei=1500&qlt=70"))),
    );
  }
}
