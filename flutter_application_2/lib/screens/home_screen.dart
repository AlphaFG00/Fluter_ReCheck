import 'package:flutter/material.dart';
import 'package:flutter_application_2/routes/app_routes.dart';
import 'package:flutter_application_2/screens/screens.dart';
import 'package:flutter_application_2/themes/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('Componentes en Flutter'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(menuOptions[index].name),
                  leading:
                      Icon(menuOptions[index].icon, color: AppTheme.primary),
                  onTap: () {
                    //implementando la navegacion manera 1
                    /*
                    final route = MaterialPageRoute(
                        builder: (context) => const ListView1Screen())
                    //push replacement destruye la ruta anterior

                    Navigator.pushReplacement(context, route);*/
                    Navigator.pushNamed(context, menuOptions[index].route);
                  },
                ),
            separatorBuilder: (_, ___) => const Divider(),
            itemCount: menuOptions.length));
  }
}
