import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String title;
  final String id;
  final String imageUrl;
  ProductItem({required this.id, required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.favorite),),
        title: Text(title,textAlign: TextAlign.center,),
        trailing: IconButton(icon: Icon(Icons.shopping_cart,),onPressed: (){},),
      ),
    );
  }
}
