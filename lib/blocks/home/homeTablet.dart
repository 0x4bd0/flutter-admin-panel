
import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/widgets/card.dart';
import 'package:flutter_admin_panel/widgets/chartOne.dart';
import 'package:flutter_admin_panel/widgets/chartTwo.dart';
import 'package:flutter_admin_panel/widgets/dattable.dart';
import 'package:flutter_admin_panel/widgets/drawer.dart';

class HomeTablet extends StatelessWidget {
  final cards;
  HomeTablet(this.cards);


  @override
  Widget build(BuildContext context) {

final card_params = {
    'height' : 150,
    'width' : MediaQuery.of(context).size.width*0.45
  };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter admin panel',style: TextStyle(color: Colors.black),),
      ),
      drawer:  MobileDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SafeArea(child: Container(
              child :  Center(
                  child: Column(
                    children: [
                      Wrap(
                        direction: Axis.horizontal,
                        spacing:  20,
                        runSpacing: 20,
                        alignment: WrapAlignment.center,
                        children: [
                          for (var item in cards)       
                                AdminCard(card:item,  params : card_params),
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
                            Card(child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Container(height:300, 
                               width: MediaQuery.of(context).size.width,
                               child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: ConstrainedBox(
                                    constraints: BoxConstraints(
                                            maxWidth: MediaQuery.of(context).size.width),
                                        child: Column(
                                         crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            MyDatatable(),
                                          ],
                                        ),
                                      )))),
                             )),
                    ],
                  ),
                )
          )),
        ),
      ),
    );
  }
}
