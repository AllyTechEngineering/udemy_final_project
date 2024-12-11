// FILE: elevated_button_widget.dart
import 'package:flutter/material.dart';
import 'package:udemy_final_project/theme/elevated_button_theme.dart';

class ElevatedButtonWidget extends StatefulWidget {
  final String label;

  const ElevatedButtonWidget({super.key, required this.label});

  @override
  _ElevatedButtonWidgetState createState() => _ElevatedButtonWidgetState();
}

class _ElevatedButtonWidgetState extends State<ElevatedButtonWidget> {
  bool _isOn = false;

  void _toggleState() {
    setState(() {
      _isOn = !_isOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: customButtonStyle.copyWith(
        backgroundColor: MaterialStateProperty.all(_isOn ? Colors.green : Colors.red),
      ),
      onPressed: _toggleState,
      child: Text(
        _isOn ? '${widget.label} On' : '${widget.label} Off',
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}