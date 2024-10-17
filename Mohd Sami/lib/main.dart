import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-commerce App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> products = [
    {
      'name': 'Shoes',
      'price': '\Rs.5000',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1HdluhLorcM5gzDqLUzc4Jrm_uqHTkY7dYQ&s',
    },
    {
      'name': 'Watch',
      'price': '\Rs.3000',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfv6PtxFdu8L11ZDzFM8bw5Cw1j_dwUJ-z8w&s',
    },
    {
      'name': 'Bag',
      'price': '\Rs.700',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThrXvcQTl31ow_m0IBkx5tuMrQrp_WkYR6IQ&s',
    },
    {
      'name': 'Sunglasses',
      'price': '\Rs.500',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfZpM89BRffjMIihLE45Nv7CY2w2lGKiJhMg&s',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alpha Store'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, 
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.75, 
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return ProductCard(
                    name: product['name']!,
                    price: product['price']!,
                    imageUrl: product['image']!,
                  );
                },
              ),
            ),
          ),
          Footer(),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String name;
  final String price;
  final String imageUrl;

  ProductCard({required this.name, required this.price, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0)),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  price,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 100, 2, 2),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(Icons.home, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
