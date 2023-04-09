import 'package:flutter/material.dart';

import '../widget/cart_item.dart';

class OrderItem 
{
  final String id;
  final double amount;
  final List <CartItem> product;
  final DateTime dateTime;

  OrderItem(this.id, this.amount, this.product, this.dateTime);
}

class Order with ChangeNotifier{
 List<OrderItem>_orders=[];
 List<OrderItem> get orders{
  return [..._orders];
 }

  void addOrder(List<CartItem>cartProducts,double total){
    _orders.insert(0, OrderItem(DateTime.now().toString(), 
    total, cartProducts,DateTime.now()));

notifyListeners();
  }
}

  
