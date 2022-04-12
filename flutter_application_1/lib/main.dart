import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp()); // para correr la app, necesita un widget llamado "app"
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // override es el metodo para que la app se considere un widget
  @override
  Widget build(BuildContext context) {
    //const dice que nunca va a cambiar el widget
    //final es lo que mas se asemeja a las constantes
    return const MaterialApp(
      home: Center(child: Text('Hola Mundo')),
    );
  }
}
