
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CajaTexto extends StatelessWidget {
  
 final String hint;
const CajaTexto({@required this.hint});
  @override
  Widget build(BuildContext context) {
   
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30, top:5, bottom: 5),
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2
          )
        ]
      ),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
          hintText: this.hint
        ),
      )
      
      );
  }
}