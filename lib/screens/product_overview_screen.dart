import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/products.dart';
import 'package:shop_app/widget/products_grid.dart';

enum FilterOptions {
  Favourites,
  All
}

class ProductOverviewScreen extends StatefulWidget {
  

  @override
  State<ProductOverviewScreen> createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  var _showOnlyFavourite=false;
  @override
  Widget build(BuildContext context) {

    // final productContainer=Provider.of<Products>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Shop App"),
      actions: [
        PopupMenuButton(
          onSelected: (FilterOptions selectedValue){
            setState(() {
              
if(selectedValue==FilterOptions.Favourites)
            {
                _showOnlyFavourite=true;
            }
            else{
              _showOnlyFavourite=false;
            }
            });
            
          },
          icon: Icon(Icons.more_vert),
          itemBuilder: (_)=>[
          PopupMenuItem(child: Text("Favourites"),value: FilterOptions.Favourites,),
          PopupMenuItem(child: Text("Show All"),value: FilterOptions.All,),
        ])
      ],
      ),
      body:
      ProductsGrid( showFavs:_showOnlyFavourite,) 
    );
  }

}