import 'package:flutter/material.dart';
import 'package:flutter_application_login/BebidasAlcoolicas.dart';
import 'package:flutter_application_login/Inicial.dart';
import 'package:flutter_application_login/VerOfertas.dart';
import 'package:flutter_application_login/VisualizandoBebida.dart';
import 'Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', home: Login());
  }
}
