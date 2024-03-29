import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void showErrorMessage(BuildContext context, String error) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.red[900],
      content: Text(
        error,
        textAlign: TextAlign.center,
      ),
    ),
  );
}
