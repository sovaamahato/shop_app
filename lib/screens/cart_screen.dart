import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/cart.dart';
import '../providers/orders.dart';
import '../widget/cart_item.dart' as ci ;

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Your Cart")),
      body: Column(children: [
        Card(
          margin: EdgeInsets.all(15),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(fontSize: 20),
                  ),
                  Spacer(),
                  Chip(
                    label: Text(
                      "\$${cart.totalAmount}",
                      style: TextStyle(
                          color: Theme.of(context)
                              .primaryTextTheme
                              .titleLarge
                              ?.color),
                    ),
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      child: InkWell(
                        onTap: () {
  try {
    print("pressed");
    Provider.of<Order>(context, listen: false).addOrder(cart.items.values.cast<ci.CartItem>().toList(), cart.totalAmount);
    cart.clear();
  } catch (e) {
    print("Error: $e");
  }
},
                        child: Text(
                                          "ORDER NOW",
                                          style: TextStyle(color: Theme.of(context).primaryColor),
                                        ),
                      ))
                ]),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
            child: ListView.builder(
              itemCount: cart.items.length,
                itemBuilder: (ctx, i) => ci.CartItem(
                    id: cart.items.values.toList()[i].id,
                    productId: cart.items.keys.toList()[i],
                    price: cart.items.values.toList()[i].price,
                    quantity: cart.items.values.toList()[i].quantity,
                    title:cart.items.values.toList()[i].title)))
      ]),
    );
  }
}
