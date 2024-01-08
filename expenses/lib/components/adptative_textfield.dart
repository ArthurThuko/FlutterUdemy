import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class AdaptativeTextField extends StatelessWidget {
  final Function(String) submitForm;
  final TextInputType keyboardType;
  final TextEditingController varController;
  final String labelText;

  const AdaptativeTextField({super.key, 
    required this.submitForm,
    required this.varController,
    required this.labelText,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? Padding(
            padding: const EdgeInsets.only(
              bottom: 10,
            ),
            child: CupertinoTextField(
              controller: varController,
              onSubmitted: (_) => submitForm,
              keyboardType: keyboardType,
              prefix: Text(
                labelText,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 6,
                vertical: 12,
              ),
            ),
          )
        : TextField(
            controller: varController,
            onSubmitted: (_) => submitForm,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              labelText: labelText,
            ),
          );
  }
}
