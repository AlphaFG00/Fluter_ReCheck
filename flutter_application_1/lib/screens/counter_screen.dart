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

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //adding button
      //wrap in a row para poder poner 3 en el mismo renglón
      floatingActionButton: CustomFloatingActionRow(
        increaseFunc: increase,
        decreaseFunc: decrease,
        resetFunc: reset,
      ),
    );
  }
}

class CustomFloatingActionRow extends StatelessWidget {
  final Function increaseFunc;
  final Function decreaseFunc;
  final Function resetFunc;

  const CustomFloatingActionRow({
    Key? key,
    required this.increaseFunc,
    required this.decreaseFunc,
    required this.resetFunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.add),
          //optimizando onPressed
          //setState: funcion anonima que notifica un cambio interno en el estado
          // y redibujará el widget
          onPressed: () => increaseFunc(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_zero),
          onPressed: () => resetFunc(),
        ),
        /*OPCION DE ESPACIADO CON SIZED BOX
        const SizedBox(
          width: 20,
        ),*/

        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1),
          onPressed: () => decreaseFunc(),
        ),
      ],
    );
  }
}
