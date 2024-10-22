import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int noOfItems = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutlineButton(
            icon: Icons.remove,
            press: () {
              if (noOfItems > 0) {
                setState(() {
                  noOfItems--;
                });
              }
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            noOfItems.toString(),
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        buildOutlineButton(
            icon: Icons.add,
            press: () {
              setState(() {
                noOfItems++;
              });
            })
      ],
    );
  }

  SizedBox buildOutlineButton(
      {required IconData icon, required void Function() press}) {
    return SizedBox(
      width: 40,
      height: 36,
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13))),
          onPressed: press,
          child: Icon(icon)),
    );
  }
}