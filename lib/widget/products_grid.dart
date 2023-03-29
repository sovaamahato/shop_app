import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/products.dart';

import 'product_item.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final Productsdata = Provider.of<Products>(context);
    final products = Productsdata.items;
    return GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (ctx, i) =>ChangeNotifierProvider(
          create:(c)=>products[i],
        child: ProductItem(
            // id: products[i].id, 
            // title: products[i].title,
            // imageUrl: products[i].imageUrl
            )) 
        );
  }
}
