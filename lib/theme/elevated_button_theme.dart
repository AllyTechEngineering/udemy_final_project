// FILE: elevated_button_theme.dart
import 'package:flutter/material.dart';

final ButtonStyle customButtonStyle = ButtonStyle(
  textStyle: MaterialStateProperty.all(
    const TextStyle(fontSize: 16, color: Colors.deepOrangeAccent),
  ),
  backgroundColor: MaterialStateProperty.all(Colors.blue), // Default color
  foregroundColor: MaterialStateProperty.all(Colors.white), // Default text color
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
      side: const BorderSide(color: Colors.blueAccent), // Button outline
    ),
  ),
  padding: MaterialStateProperty.all(
    const EdgeInsets.symmetric(horizontal: 16, vertical: 12), // Padding
  ),
  elevation: MaterialStateProperty.all(5), // Elevation
  shadowColor: MaterialStateProperty.all(Colors.black), // Shadow color
);