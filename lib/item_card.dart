import 'package:classico/products.dart';
import 'package:flutter/material.dart';


class ItemCard extends StatelessWidget {
  final Product product;
  final void Function() press;
  const ItemCard({
    super.key, required this.product, required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(product.image)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Text(
              product.title,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          Text(
            "₹${product.price}",
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}