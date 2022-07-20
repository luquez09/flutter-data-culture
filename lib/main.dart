import 'package:flutter/material.dart';
import 'package:formulario/paginas/formulario_pages.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Repositorio De Datos',
      initialRoute: 'Formulario',
      routes: {
        // ignore: avoid_types_as_parameter_names, non_constant_identifier_names, prefer_const_constructors
        'Formulario' :(BuildContext) => Formulario(),
      },
   
    );
  }
}