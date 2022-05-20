import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('Componentes en Flutter'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: const Text('Nombre de Ruta'),
                  leading: const Icon(Icons.arrow_back),
                  onTap: () {
                    //implementando la navegacion manera 1
                    /*
                    final route = MaterialPageRoute(
                        builder: (context) => const ListView1Screen())
                    //push replacement destruye la ruta anterior

                    Navigator.pushReplacement(context, route);*/
                    Navigator.pushNamed(context, 'card2');
                  },
                ),
            separatorBuilder: (_, ___) => const Divider(),
            itemCount: 100));
  }
}
