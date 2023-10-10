import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_1/ui/views/home_view.dart';
import 'package:flutter_1/ui/views/about_view.dart';
import 'package:flutter_1/ui/views/contact_view.dart';
import 'package:flutter_1/ui/views/pricing_view.dart';
import 'package:flutter_1/ui/views/location_view.dart';
import 'package:flutter_1/providers/page_provider.dart';
import 'package:flutter_1/ui/shared/custom_app_menu.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: buildBoxDecoration(),
        child: Stack(
          children: [
            _HomeBody(),
            Positioned(right: 20, top: 20, child: CustomAppMenu()),
          ],
        ),
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => BoxDecoration(
      gradient: LinearGradient(
          colors: [Colors.blue, Color.fromARGB(235, 251, 195, 64)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.5, 0.5]));
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);

    return PageView(
      controller: pageProvider.scrollController,
      scrollDirection: Axis.vertical,
      children: [
        HomeView(),
        AboutView(),
        PricingView(),
        ContactView(),
        LocationView(),
      ],
    );
  }
}
