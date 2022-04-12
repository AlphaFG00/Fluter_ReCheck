//haciendolo en widget independiente

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  //Build Context: todo el arbol de widgets, mantiene toda la referencia hasta este punto
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: Text('Home_Screen'),
      ),
    );
  }
}
