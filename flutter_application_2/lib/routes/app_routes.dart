import 'package:flutter/material.dart';

import 'package:flutter_application_2/models/models.dart';
//Definicion de Rutas
import 'package:flutter_application_2/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
      route: 'home',
      name: 'HomeScreen',
      screen: const HomeScreen(),
      icon: Icons.home,
    ),
    MenuOption(
        route: 'listView1',
        name: 'ListView1',
        screen: const ListView1Screen(),
        icon: Icons.list),
    MenuOption(
        route: 'listView12',
        name: 'listView2',
        screen: const ListView2Screen(),
        icon: Icons.list_alt),
    MenuOption(
        route: 'alert',
        name: 'Alert',
        screen: const AlertScreen(),
        icon: Icons.add_alert),
    MenuOption(
      route: 'card',
      name: 'Card',
      screen: const CardScreen(),
      icon: Icons.card_giftcard,
    ),
  ];

  //rutas existentes

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    //recibes un string con un key de tipo widget con toda su informacion
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  //rutas dinamicas
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
