//haciendolo en widget independiente

import 'package:flutter/material.dart';

//el stateful widget iene un estado
class CounterScreen extends StatefulWidget {
  //constructor que puede recibir argumentos
  const CounterScreen({Key? key}) : super(key: key);

  //creacion del estado en vez del build , regresa una instanacia del
  //                                      counterscreenstate
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  //counter como una propiedad

  int counter = 20;

  @override
  //Build Context: todo el arbol de widgets, mantiene toda la referencia hasta este punto
  Widget build(BuildContext context) {
    //tamaño de texto como variable:
    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      //backgroundColor: Colors.indigo,
      //appbar no es un widget que tenga constante.
      appBar: AppBar(
        title: const Text('Counter Screen'),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          //de arriba a abajo
          mainAxisAlignment: MainAxisAlignment.center,
          //de izquireda a derecha
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Numero de Taps',
              style: fontSize30,
            ),
            Text(
              '$counter',
              style: fontSize30,
            ),
          ],
        ),
      ),
      //changing position
      //floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      //adding button
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            counter++;
            setState(() {});
          }),
    );
  }
}
