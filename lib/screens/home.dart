import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/blocks/home/homeDesktop.dart';
import 'package:flutter_admin_panel/blocks/home/homeMobile.dart';
import 'package:flutter_admin_panel/blocks/home/homeTablet.dart';
import 'package:flutter_admin_panel/widgets/drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
    return  ScreenTypeLayout(
                mobile: HomeMobile(cards),
                tablet: HomeTablet(cards),
                desktop: HomeDesktop(cards),
         //       watch: Container(color: Colors.purple)
              );
  
  }
}
