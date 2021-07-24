import "package:flutter/material.dart";

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New App"),
      ),
      drawer: Drawer(),
      body: Center(
        child: Container(
          child: Text("Welcome guys"),
        ),
      ),
    );
  }
}
