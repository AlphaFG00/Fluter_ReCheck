import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      //definicion de rutas:
      routes: {
        'home': (BuildContext context) => const HomeScreen(),
        'listview1': (BuildContext context) => const ListView1Screen(),
        'listview2': (BuildContext context) => const ListView2Screen(),
        'alert': (BuildContext context) => const AlertScreen(),
        'card': (BuildContext context) => const CardScreen(),
      },
      //trabajar con rutas dinamicas, como un 404
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) => const AlertScreen());
      },
    );
  }
}
