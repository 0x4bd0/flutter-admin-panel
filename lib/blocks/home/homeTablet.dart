
import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/widgets/card.dart';

class HomeTablet extends StatelessWidget {
  final cards;
  HomeTablet(this.cards);

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
