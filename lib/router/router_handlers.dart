import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';
import 'package:flutter_1/ui/pages/home_page.dart';
import 'package:flutter_1/providers/page_provider.dart';

final homeHandler = Handler(handlerFunc: (context, params) {
  final page = params['page']!.first;
  if (page != '/') {
    final pageProvider = Provider.of<PageProvider>(context!, listen: false);
    pageProvider.createScrollController(page);

    return HomePage();
  }
});
