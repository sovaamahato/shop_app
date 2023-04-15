import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/screens/cart_screen.dart';
import '../widget/app_drawer.dart';
// import 'package:shop_app/providers/products.dart';
import 'package:shop_app/widget/products_grid.dart';
import '../providers/cart.dart';
import '../widget/badge.dart';


enum FilterOptions { Favourites, All }

class ProductOverviewScreen extends StatefulWidget {
  @override
  State<ProductOverviewScreen> createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  var _showOnlyFavourite = false;
  @override
  Widget build(BuildContext context) {
    // final productContainer=Provider.of<Products>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("Shop App"),
          actions: [
            PopupMenuButton(
                onSelected: (FilterOptions selectedValue) {
                  setState(() {
                    if (selectedValue == FilterOptions.Favourites) {
                      _showOnlyFavourite = true;
                    } else {
                      _showOnlyFavourite = false;
                    }
                  });
                },
                icon: Icon(Icons.more_vert),
                itemBuilder: (_) => [
                      PopupMenuItem(
                        child: Text("Favourites"),
                        value: FilterOptions.Favourites,
                      ),
                      PopupMenuItem(
                        child: Text("Show All"),
                        value: FilterOptions.All,
                      ),
                    ]),
            Consumer<Cart>(
                builder: (_, cart,ch) => Baddge(

                    child:IconButton(
                      onPressed: () {
                          Navigator.of(context).pushNamed(CartScreen.routeName);
                        }, 
                      icon:Icon(Icons.shopping_cart)),
                 
                 value:cart.itemCount.toString() ,
                    ),
                    child:IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(CartScreen.routeName);
                        }, 
                        icon: Icon(Icons.shopping_cart)) ,
                    )
          ],
        ),
        drawer: AppDrawer(),
        body: ProductsGrid(
          showFavs: _showOnlyFavourite,
        ));
  }
}
