import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_entrega2/home.dart';

void main() => runApp(Aplication());

class Aplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'APPLICATION noticias',
      home: Home(),
      theme: ThemeData(
        primaryColor: Colors.green,
        
      )
    );
  }
}
