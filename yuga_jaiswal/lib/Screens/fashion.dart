import 'package:flutter/material.dart';
import 'package:ecommerce_app/Components/navbar.dart';
import 'package:ecommerce_app/Components/searchbar.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(fashion());
}

class fashion extends StatelessWidget {
  const fashion({super.key});

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
      appBar: Searchbar(),
      backgroundColor: Colors.white,
      bottomNavigationBar: Navbar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(10.0,0.0,10.0,10.0),
            child: Text("Fashion",
            style: GoogleFonts.poppins(fontSize: 42.0, fontWeight: FontWeight.bold),
          )
        )
        ],
      ),
    );
  }
}