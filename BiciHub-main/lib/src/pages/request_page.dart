import 'package:bici_hub/src/widgets/button.dart';
import 'package:bici_hub/src/widgets/text_field_own.dart';
import 'package:flutter/material.dart';

import 'package:bici_hub/src/widgets/back_button_own.dart';
import 'package:bici_hub/src/widgets/logo.dart';

class RequestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            _Background(),
            _Container(),
          ],
        ),
      ),
    );
  }
}

class _Container extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _Header(),
        _Content(),
      ],
    );
  }
}

class _Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
      padding: EdgeInsets.all(10.0),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListView(
        children: [
          Text(
            'Request',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Be part of the Hub, fill in your details',
            style: TextStyle(
              color: Colors.black45,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.asset(
            'assets/bike_garaje.png',
            width: double.infinity,
          ),
          Align(child: TextFieldOwn('Direction', 0.84)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextFieldOwn('Phone', 0.4),
              TextFieldOwn('Ability', 0.4),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7.0),
            child: Button('Send'),
          ),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [BackButtonOwn(), Logo(), SizedBox()],
      ),
    );
  }
}

class _Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/fondo.png',
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fill,
    );
  }
}
