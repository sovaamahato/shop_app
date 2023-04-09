import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String title;
  // ProductDetailScreen({required this.title});
  static const routeName = 'product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments as String;
    final loadedProduct =
        Provider.of<Products>(context, listen: false).findById(productId);
    return Scaffold(
      appBar: AppBar(title: Text(loadedProduct.title)),
      body: Column(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            child: Image.network(loadedProduct.imageUrl),
          ),
          Text(
            '\$${loadedProduct.price.toString()}',
            style: TextStyle(color: Colors.grey[600],fontSize: 30.0),

          ),
          SizedBox(height: 10,),

          Container(
            child: Text(
              '\$${loadedProduct.description.toString()}',
              textAlign:TextAlign.center,
              softWrap: true,
              style: TextStyle(fontSize: 23.0),
          
            ),
          ),
        ],
      ),
    );
  }
}
