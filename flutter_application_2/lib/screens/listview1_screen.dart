import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const ['l1', 'l2', 'l3'];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView_!'),
        ),
        body: ListView(
          children: [
            //leyendo las opciones desde el arreglo options
            ...options
                .map(
                  (nums) => ListTile(
                    title: Text(nums),
                    trailing: const Icon(Icons.arrow_right),
                  ),
                )
                .toList(),

            Divider(),

            //widget predeterminado para elementos de una lista
            ListTile(
              title: Text('EL TAIROL'),
              leading: Icon(Icons.abc_outlined),
            )
          ],
        ));
  }
}
