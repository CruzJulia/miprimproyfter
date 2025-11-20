import 'package:flutter/material.dart';
import 'package:miprimproyfter/screens/configura_page.dart';
import 'package:miprimproyfter/screens/contactos_page.dart';
import 'package:miprimproyfter/screens/home_page.dart';
import 'package:miprimproyfter/screens/inicio_page.dart';



void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
 const MyApp({super.key}); 
@override
  Widget build(BuildContext context) {
  return MaterialApp(
    title: "Lista de Navegacion",
    theme: ThemeData(
      primaryColor: Colors.blue

    ),
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/inicio': (context) => InicioPage(),
      '/configuracion': (context) => ConfiguraPage(),
      '/contactos': (context) => ContactosPage()
    },
  );
  }
}
