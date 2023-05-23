
import 'package:flutter/material.dart';
import 'package:untitled/src/ui/widgets/Drawerfile.dart';

import 'body.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xff2874F0)),

        backgroundColor: Color(0xffffffff),
        elevation: 0,
        title: Image.asset(
          'assets/logo.png',
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width / 4,
        ),
        actions: <Widget>[
          Icon(
            Icons.notifications,
            size: 20,
            color: Color(0xff2874F0),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Icon(
              Icons.shopping_cart,
              size: 20,
              color: Color(0xff2874F0),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Drawerfile(),
      ),
      body: Body(),
    );
  }
}
