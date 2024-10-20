import 'package:ecommerce_app/Components/navbar.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/Components/product.dart';
import 'package:ecommerce_app/Components/product_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ecommerce_app/Components/searchbar.dart';

class Electronics extends StatelessWidget {
  const Electronics({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ElectronicsPage",
      debugShowCheckedModeBanner: false,
      home: ElectronicsPage(),
    );
  }
}

class ElectronicsPage extends StatelessWidget {
  const ElectronicsPage({super.key});

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
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text("Electronics",
                 style: GoogleFonts.poppins(fontSize: 50.0, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
                    height: 10, // Height of the line
                    width:350 , // Full-width line
                    color: Colors.orange, // Line color
                  ),
          SizedBox(height: 5),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(15.0,0.0,15.0,10.0),
              child:GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: (100/140),
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  scrollDirection: Axis.vertical,
                  itemCount: MyProduct.allProducts.length,
                  itemBuilder:(context, index) {
                    final allProducts = MyProduct.allProducts[index];
                    return ProductCard(product : allProducts);
                  },
                )
            ),
          )
        ]
      )
      
      
      
      
    );
  }
}



class MyProduct {
  static List<Product> allProducts = [
    Product(
      id: 1,
      name: 'Sony Headphones',
      price: '\$270',
      image: 'assets/images/head.png'),
      Product(
      id: 1,
      name: 'Sony Headphones',
      price: '\$270',
      image: 'assets/images/head.png'),
      Product(
      id: 1,
      name: 'Sony Headphones',
      price: '\$270',
      image: 'assets/images/head.png'),
      Product(
      id: 1,
      name: 'Sony Headphones',
      price: '\$270',
      image: 'assets/images/head.png'),
      Product(
      id: 1,
      name: 'Sony Headphones',
      price: '\$270',
      image: 'assets/images/head.png'),
      Product(
      id: 1,
      name: 'Sony Headphones',
      price: '\$270',
      image: 'assets/images/head.png'),
  ];
}