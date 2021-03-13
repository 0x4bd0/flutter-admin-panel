import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/widgets/card.dart';
import 'package:flutter_admin_panel/widgets/lineChart.dart';

class HomeDesktop extends StatelessWidget {
  final cards;
  HomeDesktop(this.cards);

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Wrap(
        direction: Axis.horizontal,
        spacing:  20,
        runSpacing: 20,
        alignment: WrapAlignment.center,
        children: [
          for (var item in cards)       
                AdminCard(item),
        ],
      ),
    );
  }
}
