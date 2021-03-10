import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/widgets/card.dart';
import 'package:flutter_admin_panel/widgets/lineChart.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

var cards = [
  {
    'icon': 59638,
    'value': 99,
    'color': [
      Colors.blue[100],
      Colors.blue[200],
      Colors.blue[300],
      Colors.blue[400],
      Colors.blue[500]
    ]
  },
  {
    'icon': 59130,
    'value': 25,
    'color': [
      Colors.purple[100],
      Colors.purple[200],
      Colors.purple[300],
      Colors.purple[400],
      Colors.purple[500]
    ]
  },
  {
    'icon': 57382,
    'value': 63,
    'color': [
      Colors.red[100],
      Colors.red[200],
      Colors.red[300],
      Colors.red[400],
      Colors.red[500]
    ]
  },
  {
    'icon': 60360,
    'value': 74,
    'color': [
      Colors.green[100],
      Colors.green[200],
      Colors.green[300],
      Colors.green[400],
      Colors.green[500]
    ]
  }
];


class _HomeScreenState extends State<HomeScreen> {
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
            child: LayoutBuilder(builder: (context, snapshot) {
              if (snapshot.maxWidth < 870) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        for (var item in cards)
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: AdminCard(item),
                              ),
                            ],
                          )
                      ],
                    ),
                  ],
                );
              } else if (snapshot.maxWidth < 1570) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            for (var i = 0; i < 2; i++)
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: AdminCard(cards[i]),
                                  ),
                                ],
                              )
                          ],
                        ),
                        Row(
                          children: [
                            for (var i = 2; i < 4; i++)
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: AdminCard(cards[i]),
                                  ),
                                ],
                              )
                          ],
                        ),
                      ],
                    ),
                  ],
                );
              } else {
                return Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          for (var item in cards)
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: AdminCard(item),
                              ),
                            ],
                          )
                      ],
                    ),
                    Row(
                      children: [AdminLineChart()],
                    )
                  ],
                );
              }
            }),
          )),
        ),
      ),
    );
  }
}
