import 'package:flutter/material.dart';

class RegistroUsuario extends StatefulWidget {
  const RegistroUsuario({super.key});

  @override
  State<RegistroUsuario> createState() => _RegistroUsuarioState();
}
class _RegistroUsuarioState extends State<RegistroUsuario> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _acceptTerms = false; // booleno para aceptar terminos y condiciones


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Registro de Usuarios"),  
      leading: IconButton(icon: Icon(Icons.arrow_back),
      onPressed: () {
          Navigator.pop(context);
   
      },
      ),
      ),
      body: SingleChildScrollView(

      
      child: Padding(padding: EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min, // para evitar desbordamientode la columna
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Image.asset('assets/images/user.png', height: 90,),
          SizedBox(height: 20,),
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Nombre',
                hintText: 'Ingresar su Nombre',
              ),
              validator: (value) {
                 if (value == null || value.isEmpty) {
                  return 'Por favor ingresar su Nombre';
                 }
                 return null; 
              }
            ),
            SizedBox(height: 10),

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

            TextFormField(
              controller: _phoneController,
              // La siguiente linea inddica que teclado mostrado será específico para ingresar direcciones de correo electrónico
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Telefono',
                hintText: 'Ingresar su telefono',
              ),
              validator: (value) {
                 if (value == null || value.isEmpty) {
                  return 'Por favor ingresar su telefono';
                 }
                 //Validar que sea un cúmero de telefono con una expresion regular
                 
                 if(!RegExp(r'^[0-9]+$').hasMatch(value)){
                    return "Ingrese su número de telefono valido";
                 }
                 if(value.length != 10){
                    return 'El número de telefono debe ser de 10 digitos';
                 }
                 return null; 
              }

            ),
            SizedBox(height: 20),
            // Registrar el password
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
            //Agregar checkbox para aceptar terminos y condiciones
            Row(
              children: [
                Checkbox(value: _acceptTerms, onChanged: (bool? value) {
                  setState(() {
                    _acceptTerms = value ?? false;
                  });
                },
                ),
                Text('Acepto los terminos y condiciones')
              ],

            ),
            if(!_acceptTerms)
              Text('Debes aceptar los terminos y condiciones', style: TextStyle(color: Colors.red),
              ),

            SizedBox(height: 20),
            ElevatedButton(onPressed: (){
            //Validacion del formulario
            if (_formKey.currentState!.validate() && _acceptTerms){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Formulario valido enviado'),
              ));
            } else if(!_acceptTerms){
              setState(() {             
              });
            }
            },
             child: Text('Enviar'))
          ],
        )
        ),
      ),
     ));
  }
}



