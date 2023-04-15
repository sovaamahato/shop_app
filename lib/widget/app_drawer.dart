import 'package:flutter/material.dart';
import '../screens/orders_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(child: Column(children: [
      AppBar(
        title: Text("Hello Friend!"),
        automaticallyImplyLeading: false,
      ),
      Divider(),
      ListTile(leading: Icon(Icons.shop),title: Text("Shop"),
      onTap: ()
      {
        Navigator.of(context).pushReplacement('/' as Route<Object?>);
      },),

      Divider(),
      ListTile(leading: Icon(Icons.payment),title: Text("Orders"),
      onTap: ()
      {
        Navigator.of(context).pushReplacement(OrderScreen.routeName as Route<Object?>);
      },),
    ]),);
  }
}