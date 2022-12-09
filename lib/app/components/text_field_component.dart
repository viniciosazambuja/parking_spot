//create a text field component

import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {

  const TextFieldComponent({
    Key? key,
    required this.controller,
    required this.enabled,

  }) : super(key: key);

  final TextEditingController controller;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      enabled: enabled,
      style: TextStyle(fontSize: 16),
    );
  }
}