import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class AdaptativeTextField extends StatelessWidget {
  final Function submitForm;
  final TextEditingController valueController;

  AdaptativeTextField({
    required this.submitForm,
    required this.valueController,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoTextField(
            controller: valueController,
            onSubmitted: (_) => submitForm(),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            prefix: Text(
              'value',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        : TextField(
            controller: valueController,
            onSubmitted: (_) => submitForm(),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            decoration: InputDecoration(
              labelText: 'Valor (R\$)',
            ),
          );
  }
}
