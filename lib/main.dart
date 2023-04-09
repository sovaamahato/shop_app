import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/cart.dart';
import 'package:shop_app/providers/products.dart';
import 'package:shop_app/screens/product_detail_screen.dart';
import 'package:shop_app/screens/product_overview_screen.dart';

import 'providers/orders.dart';
import 'screens/cart_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
    create: (ctx) => Products(),),
    ChangeNotifierProvider(
    create: (ctx) => Cart(),),
    ChangeNotifierProvider(
    create: (ctx) => Order(),),

    ], 
      
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Lato',
          accentColor: Colors.deepOrange,primarySwatch: Colors.purple),
        
        home: ProductOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName:(ctx)=>ProductDetailScreen()
          ,CartScreen.routeName:(ctx)=>CartScreen(),
                  },
      ),
    );
  }
}