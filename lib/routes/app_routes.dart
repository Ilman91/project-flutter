import 'Package:flutter/material.dart';

import 'package:flutter1/list/grid.dart';
import 'package:flutter1/pages/about.page.dart';
import 'package:flutter1/pages/home.page.dart';
import 'package:flutter1/list/list-view.dart';
import 'package:flutter1/size_expanded_stack/StackWidget.dart';
import 'package:flutter1/size_expanded_stack/LayoutDua.dart';

class AppRoutes {
  static const home = '/';
  static const gridProduct = '/grid-product';
  static const about = '/about';
  static const articleList = '/article-list';
  static const stackWidget = '/stack-widget';
  static const layoutDua = '/layout-dua';

  static Map<String, WidgetBuilder> routes = {
    home: (context) => const HomePage(),
    gridProduct: (context) => const GridProductPage(),
    about: (context) => const AboutPage(),
    articleList: (context) => const ArticleListScreen(),
    stackWidget: (context) => const Stackwidget(),
    layoutDua: (context) => const LayoutDua(),
  };
}
