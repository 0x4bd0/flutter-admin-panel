import 'package:flutter/material.dart';

class AdminCard extends StatelessWidget {
  final card;
  final params;

  AdminCard({this.card, this.params});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.params['width'],
      height: this.params['height'],
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(colors: this.card['color'])),
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
