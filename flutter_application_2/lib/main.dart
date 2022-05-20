import 'package:flutter/material.dart';
import 'package:flutter_application_2/routes/app_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: AppRoutes.initialRoute,
        //Rutas Optimizadas:
        routes: AppRoutes.getAppRoutes(),
        //trabajar con rutas dinamicas, como un 404
        onGenerateRoute: AppRoutes.onGenerateRoute);
  }
}
