import 'package:classico/cart_counter.dart';
import 'package:flutter/material.dart';

class CounterWithFav extends StatelessWidget {
  const CounterWithFav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CartCounter(),
        Container(height: 32, width: 32,
        decoration: BoxDecoration(
          color: Colors.pink,
          shape: BoxShape.circle,
          
        ),
        child: Icon(Icons.favorite, color: Colors.white),
        )
      ],
    );
  }
}