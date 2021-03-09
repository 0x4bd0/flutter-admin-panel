import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/widgets/card.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

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
                        AdminCard(),
                        SizedBox(height: 50),
                        AdminCard(),
                        SizedBox(height: 50),
                        AdminCard(),
                        SizedBox(height: 50),
                        AdminCard()
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
                            AdminCard(),
                            SizedBox(width: 50),
                            AdminCard(),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          children: [
                            AdminCard(),
                            SizedBox(width: 50),
                            AdminCard(),
                          ],
                        ),
                      ],
                    ),
                  ],
                );
              } else {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AdminCard(),
                    SizedBox(width: 50),
                    AdminCard(),
                    SizedBox(width: 50),
                    AdminCard(),
                    SizedBox(width: 50),
                    AdminCard(),
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
