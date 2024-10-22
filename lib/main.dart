import 'package:classico/tiles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(debugShowCheckedModeBanner: false,
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.grey ),
      home: const MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Tiles(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        backgroundColor: const Color.fromARGB(255, 46, 48, 48),
        title: const Center(
          child: Text("Brush and Buy", style: TextStyle(color: Colors.white)),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {},
          //add your cart nav
        ));
  }
}