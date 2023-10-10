import 'package:flutter/material.dart';
import 'package:flutter_1/locator.dart';
import 'package:flutter_1/router/route_generator.dart';
import 'package:flutter_1/ui/layout/main_layout_page.dart';

import 'package:flutter_1/services/navigation_services.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

// import 'package:flutter_1/ui/pages/counter_page.dart';
// import 'package:flutter_1/ui/pages/counter_provider_page%20.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RutasApp',
      initialRoute: '/stateful',
      onGenerateRoute: RouteGenerator.generateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: (_, child) {
        return MainLayoutPage(
          child: child ?? Container(),
        );
      },
    );
  }
}
