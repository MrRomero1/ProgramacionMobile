import 'package:flutter/material.dart';
import 'package:pc2romero/pages/form.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title :'Material App',
      home:Formulario(),
    );
  }
}