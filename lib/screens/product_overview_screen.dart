import 'package:flutter/material.dart';
import 'package:shop_app/widget/products_grid.dart';



class ProductOverviewScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shop App")),
      body:
      ProductsGrid() 
    );
  }
}
