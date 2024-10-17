import 'package:flutter/material.dart';
import 'package:ecommerce_app/navbar.dart';

void main() {
  runApp(profile());
}

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: "Fashion",
      debugShowCheckedModeBanner: false,
      home: FashionPage(),
    );
  }
}

class FashionPage extends StatelessWidget {
  const FashionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Navbar(),
    );
  }
}