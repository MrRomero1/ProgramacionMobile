import 'package:flutter/cupertino.dart';

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      
      child: Image(image: AssetImage("assets/fondo.png" ), fit: BoxFit.cover,), );
  }
}