
import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/widgets/card.dart';
import 'package:flutter_admin_panel/widgets/drawer.dart';

class HomeMobile extends StatelessWidget {
  final cards;
  HomeMobile(this.cards);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter admin panel',style: TextStyle(color: Colors.black),),
      ),
      drawer:  MobileDrawer(),
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
