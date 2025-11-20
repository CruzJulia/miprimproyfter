import 'package:flutter/material.dart';

class ConfiguraPage extends StatelessWidget {
  const ConfiguraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Configuración"),
      ),
      body: Center(
        child: Text("Bienvenidos a configuracion..."),
       
      ),
    );
  }
}
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}