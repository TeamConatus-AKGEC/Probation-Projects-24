import 'package:flutter/material.dart';
import 'package:classico/products.dart';
import 'package:classico/body.dart';


class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:  product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(onPressed:() => Navigator.pop(context), icon: const BackButton(color: Colors.white)),
      iconTheme: IconThemeData(color: Colors.white),
      actions: <Widget>[
        IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart),),
        const SizedBox(width: 10)
      ],
    );
  }
}