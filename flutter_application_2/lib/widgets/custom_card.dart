import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            title: Text('Test'),
            subtitle: Text(
                'Mollit aliqua et excepteur ex laboris enim qui nulla incididunt sint eiusmod tempor amet aute. Aute anim elit eiusmod pariatur ex fugiat consequat aliqua nostrud sint et minim laborum. Ut eiusmod eiusmod ex nisi id irure. Labore enim proident incididunt do duis elit est occaecat pariatur ipsum exercitation. Adipisicing aliqua est veniam tempor reprehenderit magna.'),
            leading: Icon(
              Icons.title,
              color: AppTheme.primary,
            ),
          ),
          //row no debe ser constante
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancelar'),
                ),
                TextButton(onPressed: () {}, child: const Text('ok'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
