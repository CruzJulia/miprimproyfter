import 'package:flutter/material.dart';
import 'package:miprimproyfter/screens/registro_usuario.dart';






class InicioPage extends StatefulWidget {
  const InicioPage({super.key});

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
 final TextEditingController _passwordController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inicio')),
      body:  SingleChildScrollView(

      
      child: Padding(padding: EdgeInsets.all(16.0),
             child: Form(
              key: _formKey,
             child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
        
        children : [
          Image.asset('assets/images/global.png', height: 90,),
          SizedBox(height: 20,),
          Text(
          'Iniciar Sesión',
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
          ),
          Text(
          'Utiliza tu correo y contraseña para continuar',
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 12),
          ),

          // Autenticacion con email y password
          
            TextFormField(
              controller: _emailController,
              // La siguiente linea indica que teclado mostrado será específico para ingresar direcciones de correo electrónico
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Ingresar su email',
              ),
              validator: (value) {
                 if (value == null || value.isEmpty) {
                  return 'Por favor ingresar su email';
                 }
                 //Validar que sea un correo electronico con una expresion regular
                 if(!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)){
                    return 'Ingrese un correo electrónico válido';
                 }
                 return null; 
              }

            ),
            SizedBox(height: 20),
          // autenticar con password
           TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Contraseña',
                hintText: 'Ingresar su contraseña',
              ),
              validator: (value) {
                 if (value == null || value.isEmpty) {
                  return 'Por favor ingresar su contraseña';
                 }
                 //Validar que sea la longotud no menor de 8 digitos
                 if(value.length < 8){
                    return 'Ingrese un contraseña válida';
                 }
                 return null; 
              }

            ),
            SizedBox(height: 20),
            // creamos boton para iniciar sesion
            ElevatedButton(onPressed: (){
            //Validacion del formulario
            if (_formKey.currentState!.validate() ){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Inicio de sesion valido enviado'),
              ));
            } else {
              setState(() {             
              });
            }
            },
             child: Text('Iniciar sesion')),

         GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) =>  RegistroUsuario()));
          },
          child:  Text(
          'NO tienes cuenta? Registrate',
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
         ),
        ],
      ),
      ),
      ),
      ),
      );
   }
}


