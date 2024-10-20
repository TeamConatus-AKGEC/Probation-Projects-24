import 'package:ecommerce_app/Components/navbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(cart());
}

class cart extends StatelessWidget {
  const cart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: "Cart",
      debugShowCheckedModeBanner: false,
      home: CartPage(),
    );
  }
}

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shopping Cart',
          style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: Navbar(),
    );
  }
}