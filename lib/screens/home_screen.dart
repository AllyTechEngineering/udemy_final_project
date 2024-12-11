// FILE: home_screen.dart
import 'package:flutter/material.dart';
import 'package:udemy_final_project/widgets/elevated_button_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Final Project'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: ElevatedButtonWidget(
                    label: 'LED',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: ElevatedButtonWidget(
                    label: 'Relay',
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: ElevatedButtonWidget(
                    label: 'Motor',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: ElevatedButtonWidget(
                    label: 'Buzzer',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}