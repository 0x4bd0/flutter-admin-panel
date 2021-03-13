
import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/widgets/card.dart';

class HomeDesktop extends StatelessWidget {
  final cards;
  HomeDesktop(this.cards);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter admin panel'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SafeArea(child: Container(
              child :     Center(
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
                )
          )),
        ),
      ),
    );
  }
}
