import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pracita1/login_page.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
@override 

Widget build(BuildContext context) {
  return MaterialApp(

title: 'flutter Demo',
debugShowCheckedModeBanner: false,
theme: ThemeData(
  visualDensity: VisualDensity.adaptivePlatformDensity,
),
initialRoute: LoginPage.id,
routes: {
  LoginPage.id: (context) => LoginPage(),
},
  );
}

}