import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Boton extends StatelessWidget {
final String a;

  const Boton({@required this.a}) ;



  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: EdgeInsets.symmetric(horizontal:120 , vertical:15 ),
      decoration: BoxDecoration(
        color: Colors.blue[900],
        borderRadius: BorderRadius.circular(5)
        
      ),
      child: Text('Login to my count', style: TextStyle(fontSize: 15, color: Colors.white), ),
      
    );
    
  }
  
}