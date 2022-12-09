//create a text component

import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {

  const TextComponent({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
