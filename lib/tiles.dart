import 'package:classico/details.dart';
import 'package:classico/item_card.dart';
import 'package:flutter/material.dart';
import 'package:classico/products.dart';

class Tiles extends StatelessWidget {
  const Tiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: GridView.builder(
            itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                childAspectRatio: 0.75),
            itemBuilder: (context, index) => ItemCard(
                  product: products[index],
                  press: () =>Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>DetailsScreen(
                        product: products[index]
                        ),
                        ))
                )
                ),
      ),
    );
  }
}