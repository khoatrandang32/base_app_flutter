import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  ColorScheme get colorScheme {
    return Theme.of(this).colorScheme;
  }

  TextTheme get textTheme {
    return Theme.of(this).textTheme;
  }
}
