import 'package:app_design/widges/widges_support.dart';
import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore', style: TextStyle(fontSize: 20),),
        actions: [
          Container(
              padding: const EdgeInsets.all(8.0),
              child: const Icon(Icons.search)),
          Container(
              padding: const EdgeInsets.all(8.0),
              child: const Icon(Icons.mic)),
          Container(
              padding: const EdgeInsets.all(8.0),
              child: const Icon(Icons.camera_alt)),
          Container(
              padding: const EdgeInsets.all(8.0),
              child: const Icon(Icons.shopping_cart)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              child: const Text('Products For You',
              style: TextStyle(fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
              ),
            ),
            Container(
              child: showItems(),
            )
          ],
        ),
      )
    );
  }

  Widget showItems(){
    return Column(
      children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _builtItems("images/iphone.jpeg", "\u20B942,999", "Apple iPhone 13" ),
              _builtItems("images/samsung.jpeg", "\u20B975,999", "Samsung Galaxy S23" ),
            ]
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _builtItems("images/iQOO.jpeg", "\u20B919,998", "iQOO Z9s 5G" ),
              _builtItems("images/apple.webp", "\u20B959,990", "Apple MacBook Air" ),
            ]
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _builtItems("images/candles.jpg", "\u20B9349", "24Pcs Decorative" ),
              _builtItems("images/accessories.jpeg", "\u20B9185", "Beautiful Accessories" ),
            ]
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _builtItems("images/blanket.jpeg", "\u20B9499", "AC Conforter Blanket" ),
              _builtItems("images/lights.jpg", "\u20B9251", "LED String Serial Lights" ),
            ]
        ),
      ],
    );
  }

  Widget _builtItems(String imagePath , String price , String label){
    return Material(
      child: Row(
          children: [
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => const Details()),
                // );
              },
              child: Container(
                margin: const EdgeInsets.all(4),
                child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Image.asset(
                            imagePath,
                            height: 180,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            price,
                            style: AppWidgets.semiBoldTextFeildStyle(),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            label,
                            style: AppWidgets.lightTextFeildStyle(),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                        ],
                      ),
                    )
                ),
              ),
            ),
          ]
      ),
    );
  }
}
