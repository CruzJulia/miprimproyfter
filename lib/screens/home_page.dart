import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("My aplicacion de Cafeteria flutter"),
        
        ),
        // agregar un drawer
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Menú Principal',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Inicio'),
                trailing: Icon(Icons.arrow_forward_rounded),
                onTap: () {
                  Navigator.pushNamed(context, '/inicio');
                  // Acción para la opción Inicio
                  //Navigator.pop(context); // Cierra el drawer
                  //Navigator.of(context, rootNavigator: true).push(
                //MaterialPageRoute(builder: (context) => const InicioPage()),
                

                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Configuración'),
                trailing: Icon(Icons.arrow_forward_rounded),
                onTap: () {
                  Navigator.pushNamed(context, '/configuracion');
                  
                  // Acción p
                  //ara la opción Configuración
                  //Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Perfil'),
                onTap: () {
                  // Acción para la opción Perfil
                  //Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Contactos'),
                onTap: () {
                  // Acción para la opción Salir
                  //Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Salir'),
                onTap: () {
                  // Acción para la opción Perfil
                Navigator.pop(context);
                },
              ),
            ],
          ),
          
          

        ),
        body: Align(
         
          alignment: Alignment.topCenter,
           //child: Text("Hello World"), 
          child: Card(
          elevation: 5, // Sombra
          margin: const EdgeInsets.all(16.0),
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                // Contenido de la tarjeta
                const Text(
                  'La Cafe To Go',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Desayunos, comidas, Postres y Snacks ',
                  textAlign: TextAlign.center,
                ),
                // Puedes añadir más widgets aquí, como una imagen o botones
               Card(
                color: Colors.blue,
                child: ListTile(title: Text("Desayunos"),
                subtitle: const Text("Huevos con Jamon, Jugo de frutas y cafe", ),
                ),
                
               ),
               Card(
                color: Colors.blueGrey,
                child: ListTile(title: Text("Breakfast"),
                ),

               ),
               Card(
                color: Colors.grey,
                child: ListTile(title: Text("Snacks"),
                ),

               ),
               Card(
                color: Colors.blue,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                Text("Desayunos", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                SizedBox(height: 8),
                Text("• Huevos con jamón", style: TextStyle(color: Colors.white70)),
                Text("• Jugo de frutas", style: TextStyle(color: Colors.white70)),
                Text("• Café", style: TextStyle(color: Colors.white70)),
                ],
                )
               ),
               Card(
                color: Colors.blue,
                child: ListTile(title: Text("Postres"),
                ),
               ),
                // ),
              ],
            ),
          ),
      
        ),
        ),
      );
  }
 }


