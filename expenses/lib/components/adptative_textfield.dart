import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class AdaptativeTextField extends StatelessWidget {
  final Function submitForm;
  final TextEditingController varController;
  final bool isNum;

  AdaptativeTextField({
    required this.submitForm,
    required this.varController,
    required this.isNum,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? isNum
            ? CupertinoTextField(
                controller: varController,
                onSubmitted: (_) => submitForm(),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                prefix: Text(
                  'Valor (R\$)',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            : CupertinoTextField(
                controller: varController,
                onSubmitted: (_) => submitForm(),
                prefix: Text(
                  'Título',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
        : isNum
            ? TextField(
                controller: varController,
                onSubmitted: (_) => submitForm(),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  labelText: 'Valor (R\$)',
                ),
              )
            : TextField(
                controller: varController,
                onSubmitted: (_) => submitForm(),
                decoration: InputDecoration(
                  labelText: 'Título',
                ),
              );
  }
}
