import 'dart:convert';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:experimento_flutter/Activity/home.dart';
class OtraPantalla extends StatefulWidget {
  @override
  _OtraPantallaState createState() => _OtraPantallaState();
}
class _OtraPantallaState extends State<OtraPantalla> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Otra Pantalla')),
      body: Center(child: Text('Contenido de la otra pantalla')),
      //drawer: Home()., // Hereda el mismo drawer del Home
    );
  }
}
