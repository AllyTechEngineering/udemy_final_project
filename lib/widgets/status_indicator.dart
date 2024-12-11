// FILE: status_indicator.dart
import 'package:flutter/material.dart';

class StatusIndicator extends StatefulWidget {
   final String label;
 const StatusIndicator({super.key, required this.label});

  @override
  StatusIndicatorState createState() => StatusIndicatorState();
}

class StatusIndicatorState extends State<StatusIndicator> {
  Color _circleColor = Colors.red;

  void changeColor() {
    setState(() {
      _circleColor = _circleColor == Colors.red ? Colors.green : Colors.red;
    });
  }

  @override
  Widget build(BuildContext context) {
        return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: _circleColor,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          _circleColor == Colors.green ? '${widget.label} On' : '${widget.label} Off',
          style: TextStyle(
            color: _circleColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
