import 'package:flutter/material.dart';

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
                  onTap: () {},
                ),
            separatorBuilder: (_, ___) => const Divider(),
            itemCount: 100));
  }
}
