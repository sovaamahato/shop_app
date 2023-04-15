import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/orders.dart' show Order;
import '../widget/app_drawer.dart';
import '../widget/order_item.dart';

class OrderScreen extends StatelessWidget {
  static const routeName ='/orders';
  

  @override
  Widget build(BuildContext context) {
    final orderData =Provider.of<Order>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Your Orders"),
      
      ),
      drawer:AppDrawer(),
      body: ListView.builder(itemCount: orderData.orders.length,

      itemBuilder: (ctx,i){OrderItem( order:orderData.orders[i],);})
    );
  }
}