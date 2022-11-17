import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto_2/controlador/controlador_general.dart';
import 'package:reto_2/ui/menu.dart';
import 'package:reto_2/ui/pag1_inicio.dart';
import 'package:reto_2/ui/pag2_productos.dart';
import 'package:reto_2/ui/pag3_carrito.dart';
import 'package:reto_2/ui/pag4_acerca_de.dart';

List paginas = [
  pag1_inicio(),
  pag2_productos(),
  pag3_carrito(),
  pag4_acerca_de()
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Reto 2',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'FruVer - Carrito de compras'),
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

class _MyHomePageState extends State<MyHomePage> {
  controlador_general control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: menu(),
      body: Obx(() => paginas[control.posicion_pagina]),
    );
  }
}
