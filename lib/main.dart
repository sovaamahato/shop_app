import 'package:flutter/material.dart';
import 'package:shop_app/screens/product_overview_screen.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ProductOverviewScreen(),);
  }
}