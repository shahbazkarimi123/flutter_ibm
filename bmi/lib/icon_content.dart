import 'package:flutter/material.dart';
import './constance.dart';

class IconContent extends StatelessWidget {
  final IconData? icon;
  final String? label;
  const IconContent({Key? key, this.icon, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: Colors.white,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label.toString(),
          style: klabelTextStyle,
        )
      ],
    );
  }
}
