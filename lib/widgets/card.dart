import 'package:flutter/material.dart';

class AdminCard extends StatelessWidget {
  final card;

  AdminCard(this.card);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient:
              LinearGradient(colors: this.card['color'])),
      child: Center(
          child: RichText(
        text: TextSpan(
          children: [
            WidgetSpan(
              child: Icon(
                IconData(this.card['icon'], fontFamily: 'MaterialIcons'),
                size: 90,
              ),
            ),
            TextSpan(
                text: this.card['value'].toString(),
                style: TextStyle(fontSize: 60)),
          ],
        ),
      )),
    );
  }
}
