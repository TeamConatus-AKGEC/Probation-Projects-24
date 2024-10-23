import 'package:app_design/pages/details.dart';
import 'package:app_design/pages/account.dart';
import 'package:app_design/pages/show_menu.dart';
import 'package:app_design/widges/widges_support.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        title: const Text('Hello Sneha,',
        style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.bold) ),
        backgroundColor: Colors.red[900],
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Account()),
                );
              },
              icon: const Icon(Icons.account_circle),
              color: Colors.black,
              padding: const EdgeInsets.all(10.0),
          ),
        ],
        bottom:  PreferredSize(
          preferredSize: const Size.fromHeight(70.0),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search here...',
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                        ),
                        prefixIcon: const Icon(Icons.search ,
                          color: Colors.grey,),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.zero,
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
      ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10.0),
                child: showCategories(),
              ),
              Text("Top Deals", style: AppWidgets.boldTextFeildStyle()),
              Container(
                margin: const EdgeInsets.all(10.0),
                child: showItems(),
              ),
              Text("Trending Deals Under \u20B9499", style: AppWidgets.boldTextFeildStyle()),
              Container(
                margin: const EdgeInsets.all(10.0),
                child: showItems1(),
              ),
            ],
          ),
        ),
      ),
      drawer: const Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ShowMenu(),
              DrawerList(),
            ],
          ),
        ),
      ),
    );
  }




  Widget showCategories() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildCategories("images/fashion.jpeg", "Fashion"),
          _buildCategories("images/mobile.jpeg", "Mobile"),
          _buildCategories("images/grocery.jpeg", "Grocery"),
          _buildCategories("images/pharmacy.jpeg", "Pharmacy"),
          _buildCategories("images/travel.jpeg", "Travel"),
          _buildCategories("images/electronics.jpeg", "Electronics"),
        ],
      ),
    );
  }

  Widget _buildCategories(String imagePath, String label) {
    return Container(
      margin: const EdgeInsets.only(right: 15.0),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.all(8),
          width: 80, // Adjust width as needed
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                imagePath,
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 3), // Space between image and text
              Text(
                label,
                style: const TextStyle(fontSize: 12),// Adjust text style as needed
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget showItems(){
      return Column(
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _builtItems("images/iphone.jpeg", "\u20B942,999", "Apple iPhone 13", "Super Retina XDR display" ),
                  _builtItems("images/samsung.jpeg", "\u20B975,999", "Samsung Galaxy S23", "3900mAh battery with 25W charging" ),
                  ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                _builtItems("images/iQOO.jpeg", "\u20B919,998", "iQOO Z9s 5G", "I Quest On and On"),
                _builtItems("images/apple.webp", "\u20B959,990", "Apple MacBook Air", " Intel Y-series Amber Lake " ),
                ]
             ),
          ],
      );
  }

  Widget _builtItems(String imagePath , String price , String label , String label1){
    return Material(
        child: Row(
            children: [
              GestureDetector(
                onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => Details(
                  imagePath: imagePath,
                  price: price,
                  label: label,
                  label1: label1,
                )),
                );
                },
                child: Container(
                  margin: const EdgeInsets.all(4),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.all(14),
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

  Widget showItems1(){
    return Column(
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _builtItems1("images/candles.jpg", "\u20B9349", "24Pcs Decorative", "flammable solid substance like tallow" ),
                _builtItems1("images/accessories.jpeg", "\u20B9185", "Beautiful Accessories", "Intriguing, alluring, fascinating" ),
              ]
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _builtItems1("images/blanket.jpeg", "\u20B9499", "AC Conforter Blanket", "Blankets chronicles Craig's adolescence" ),
                _builtItems1("images/lights.jpg", "\u20B9251", "LED String Serial Lights", "conformance to specifications." ),
              ]
          ),
        ],
      );
  }

  Widget _builtItems1(String imagePath , String price , String label , String label1){
    return Material(
      child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => Details(
                  imagePath: imagePath,
                  price: price,
                  label: label,
                  label1: label1,
                )),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(4),
                child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.all(14),
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



