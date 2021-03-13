
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
        title: const Text('Flutter admin panel',style: TextStyle(color: Colors.black),),
        elevation: 0,
      ),
      body: SafeArea(child: Container(
          child : Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible( flex:2,child: Container(constraints: BoxConstraints(maxWidth: 500, minWidth: 300), child: MobileDrawer())),
              Flexible(
                flex:8,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: SizedBox.expand(
                    child: Wrap(
                      direction: Axis.horizontal,
                      alignment: WrapAlignment.center,
                      spacing:  20,
                      runSpacing: 20,
                      children: [
                        for (var item in cards)       
                              AdminCard(item),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
      )),
    );
  }
}
