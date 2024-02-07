import 'package:flutter/material.dart';

final class MyTheme {
  static final theme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.deepPurple[50],
      filled: true,
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        borderSide: BorderSide.none,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
    ),
  );
}
