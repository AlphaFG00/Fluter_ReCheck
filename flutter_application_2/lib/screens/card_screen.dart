import 'package:flutter/material.dart';
import 'package:flutter_application_2/themes/app_theme.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CardScreen'),
      ),
      body: ListView(
          //symetric para separaciones iguales
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
            Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text('Test'),
                    subtitle: Text(
                        'Mollit aliqua et excepteur ex laboris enim qui nulla incididunt sint eiusmod tempor amet aute. Aute anim elit eiusmod pariatur ex fugiat consequat aliqua nostrud sint et minim laborum. Ut eiusmod eiusmod ex nisi id irure. Labore enim proident incididunt do duis elit est occaecat pariatur ipsum exercitation. Adipisicing aliqua est veniam tempor reprehenderit magna.'),
                    leading: Icon(
                      Icons.title,
                      color: AppTheme.primary,
                    ),
                  )
                ],
              ),
            )
          ]),
    );
  }
}
