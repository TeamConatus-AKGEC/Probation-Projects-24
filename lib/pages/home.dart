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
        leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
        ),
        titleSpacing: 0.0,
        title: Text('Hello Sneha,',
        style: AppWidges.boldTextFeildStyle()),
        backgroundColor: Colors.red[900],
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.account_circle),
              color: Colors.black,
              padding: EdgeInsets.only(right: 20.0),
          ),
        ],
        bottom:  PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: Container(
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search here...',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          prefixIcon: Icon(Icons.search ,
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
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
          child: showItem()),
      );
  }

  Widget showItem() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildItem("images/fashion.jpeg", "Fashion"),
          _buildItem("images/mobile.jpeg", "Mobile"),
          _buildItem("images/grocery.jpeg", "Grocery"),
          _buildItem("images/pharmacy.jpeg", "Pharmacy"),
          _buildItem("images/travel.jpeg", "Travel"),
          _buildItem("images/electronics.jpeg", "Electronics"),
        ],
      ),
    );
  }

  Widget _buildItem(String imagePath, String label) {
    return Material(
      elevation: 2.0,
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
            SizedBox(height: 3), // Space between image and text
            Text(
              label,
              style: TextStyle(fontSize: 12), // Adjust text style as needed
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}



