import 'package:flutter/material.dart';

class MobileDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    shrinkWrap: true,
    children: <Widget>[
      DrawerHeader(
        child: Text('Welcome Back, Admin',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
      ),
      ListTile(
        leading: Icon(Icons.store),
        title: Text('Stores'),
        onTap: () {
        },
      ),
      ListTile(
        leading: Icon(Icons.people_sharp),
        title: Text('Clients'),
        onTap: () {
        },
      ),
      ListTile(
        leading: Icon(Icons.person),
        title: Text('Sellers'),
        onTap: () {
        },
      ),
      ListTile(
        leading: Icon(Icons.list_alt_sharp),
        title: Text('Orders'),
        onTap: () {
        },
      ),
        ListTile(
        leading: Icon(Icons.delivery_dining),
        title: Text('Deliveries'),
        onTap: () {
        },
      ),
    ],
  ),
);

  }
}