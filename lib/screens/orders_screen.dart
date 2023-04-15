import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/orders.dart' show Order;
import '../widget/order_item.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final orderData =Provider.of<Order>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Your Orders"),
      
      ),
      body: ListView.builder(itemCount: orderData.orders.length,

      itemBuilder: (ctx,i){OrderItem( order:orderData.orders[i],);})
    );
  }
}