import 'package:flutter/material.dart';

class TextFieldOwn extends StatelessWidget {
  final label;
  final porcentage;

  TextFieldOwn(this.label, this.porcentage);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _Label(label),
          _TextField(porcentage),
        ],
      ),
    );
  }
}

class _TextField extends StatelessWidget {
  const _TextField(this.porcentage);

  final porcentage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * porcentage,
      height: 45.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow: [BoxShadow(blurRadius: 1, offset: Offset(0.5, 0.5))],
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(12.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
      ),
    );
  }
}

class _Label extends StatelessWidget {
  final label;

  const _Label(this.label);

  @override
  Widget build(BuildContext context) {
    return Text(
      '$label',
      style: TextStyle(
        color: Colors.black54,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
