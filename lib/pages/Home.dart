import "package:flutter/material.dart";
import 'package:flutter_app1/widgets/drawer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New App"),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Container(
          child: Text("Welcome guys"),
        ),
      ),
    );
  }
}
