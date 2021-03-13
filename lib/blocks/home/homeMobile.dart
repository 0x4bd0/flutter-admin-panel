
import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/widgets/card.dart';
import 'package:flutter_admin_panel/widgets/chartOne.dart';
import 'package:flutter_admin_panel/widgets/chartTwo.dart';
import 'package:flutter_admin_panel/widgets/drawer.dart';

class HomeMobile extends StatelessWidget {
  final cards;
  HomeMobile(this.cards);


  @override
  Widget build(BuildContext context) {

  final card_params = {
    'height' : 150,
    'width' : MediaQuery.of(context).size.width
  };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter admin panel',style: TextStyle(color: Colors.black),),
      ),
      drawer:  MobileDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: SafeArea(child: Container(
                  child : Center(
                      child: Column(
                        children: [
                          Wrap(
                            direction: Axis.horizontal,
                            spacing:  20,
                            runSpacing: 20,
                            alignment: WrapAlignment.center,
                            children: [
                              for (var item in cards)       
                                    AdminCard(card:item, params:card_params),
                            ],
                          ),
                          SizedBox(height: 20),
                            Card(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(height:300, child: SimpleLineChart()),
                            )),
                           SizedBox(height: 20),
                             Card(child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Container(height:300, child: GroupedBarChart()),
                             )),
                        ],
                      ),
                    )
              )),
            ),
          ],
        ),
      ),
    );
  }
}
