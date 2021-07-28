import 'package:flutter/material.dart';
import 'package:flutter_app1/core/store.dart';
import 'package:flutter_app1/pages/Home.dart';
import 'package:flutter_app1/pages/Login.dart';
import 'package:flutter_app1/pages/home_detail.dart';
import 'package:flutter_app1/utils/routes.dart';
import 'package:flutter_app1/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_strategy/url_strategy.dart';

import 'pages/cart_page.dart';

void main() {
  setPathUrlStrategy();
  runApp(VxState(
    store: MyStore(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      routeInformationParser: VxInformationParser(),
      routerDelegate: VxNavigator(routes: {
        "/": (_, __) => MaterialPage(child: Login()),
        MyRoutes.homeRoute: (_, __) => MaterialPage(child: Home()),
        MyRoutes.homeDetailsRoute: (uri, _) {
          final catalog = (VxState.store as MyStore)
              .catalog
              .getById(int.parse(uri.queryParameters["id"]!));
          return MaterialPage(
              child: HomeDetailsPage(
            catalog: catalog,
          ));
        },
        MyRoutes.loginRoute: (_, __) => MaterialPage(child: Login()),
        MyRoutes.cartRoute: (_, __) => MaterialPage(child: Cart()),
      }),
      // initialRoute: MyRoutes.homeRoute,
      // routes: {
      //   "/": (context) => Login(),
      //   MyRoutes.homeRoute: (context) => Home(),
      //   MyRoutes.loginRoute: (context) => Login(),
      //   MyRoutes.cartRoute: (context) => Cart(),
      // },
    );
  }
}
