import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/listview1_screen.dart';
import 'package:flutter_application_2/screens/listview2_separated.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: ListView2Screen(),
    );
  }
}
