import 'package:flutter/material.dart';

class AdminCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient:
              LinearGradient(colors: [Colors.blue, Colors.red, Colors.green])),
    );
  }
}
