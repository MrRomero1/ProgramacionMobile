import 'package:flutter/cupertino.dart';

import 'back_button_own.dart';
import 'logo.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [BackButtonOwn(), Logo(), SizedBox()],
      ),
    );
  }
}