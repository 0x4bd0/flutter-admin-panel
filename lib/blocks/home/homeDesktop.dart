
import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/widgets/card.dart';
import 'package:flutter_admin_panel/widgets/drawer.dart';

class HomeDesktop extends StatelessWidget {
  final cards;
  HomeDesktop(this.cards);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter admin panel'),
        elevation: 0,
      ),
      body: SafeArea(child: Container(
          child : Row(
            children: [
              Flexible( flex:2,child: Container(constraints: BoxConstraints(maxWidth: 500, minWidth: 300), child: MobileDrawer())),
              Expanded(
                flex:8,
                child: Center(
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
                  ),
              ),
            ],
          )
      )),
    );
  }
}
