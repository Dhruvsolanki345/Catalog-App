import 'package:flutter/material.dart';
import 'package:flutter_app1/core/store.dart';
import 'package:flutter_app1/pages/Home.dart';
import 'package:flutter_app1/pages/Login.dart';
import 'package:flutter_app1/utils/routes.dart';
import 'package:flutter_app1/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

import 'pages/cart_page.dart';

void main() {
  runApp(VxState(
    store: MyStore(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.dark,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => Login(),
        MyRoutes.homeRoute: (context) => Home(),
        MyRoutes.loginRoute: (context) => Login(),
        MyRoutes.cartRoute: (context) => Cart(),
      },
    );
  }
}
