import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const ['l1', 'l2', 'l3'];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView_2'),
          elevation: 0,
          backgroundColor: Colors.indigo,
        ),
        //para constriur la lista con elementos separados
        body: ListView.separated(
          itemCount: options.length,
          //como se construiran los items
          //como lo construyes y que le mandas
          itemBuilder: (context, i) => ListTile(
            title: Text(options[i]),
            trailing: const Icon(Icons.arrow_right, color: Colors.indigo),
            onTap: () {},
          ),

          //notacion para argumentos no requeridos
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
