import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto_2/controlador/controlador_general.dart';
import 'package:reto_2/ui/home.dart';

void main() {
  Get.put(controlador_general());
  runApp(const MyApp());
}
