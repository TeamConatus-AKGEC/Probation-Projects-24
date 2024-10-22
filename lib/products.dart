import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final String image, title, description;
  final int size, price, id;
  final Color color;
  const Product({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.size,
    required this.color,
    required this.id,
  });
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

List<Product> products = [
  const Product(
      id: 1,
      title: 'Oversized t-shirt',
      size: 32,
      color: Colors.black,
      image: 'assets/images/oversized.png',
      price: 699,
      description: 'Modern Oversized t-shirt with finisher logo.'),
  const Product(
      id: 2,
      title: 'Football boots',
      size: 9,
      color: Colors.grey,
      image: 'assets/images/nike.png',
      price: 4999,
      description: 'White football boots by Nike'),
  const Product(
      id: 3,
      title: 'Real Madrid jersey',
      size: 32,
      color: Colors.grey,
      image: 'assets/images/jersey.png',
      price: 2999,
      description: 'A white Real Madrid jersey by Nike'),
  const Product(
      id: 4,
      title: 'Green Shirt',
      size: 34,
      color: Color.fromARGB(255, 57, 92, 59),
      image: 'assets/images/shirt.png',
      price: 699,
      description: 'Green and yellow check shirt'),
  const Product(
      id: 5,
      title: 'Whey Protien',
      color: Colors.grey,
      size: 500,
      image: 'assets/images/protien.png',
      price: 1999,
      description: 'A perfect muscelBlaze mass gainer for bulking'),
  const Product(
      id: 6,
      title: 'Victus skin',
      size: 16,
      color: Color.fromARGB(255, 103, 37, 32),
      image: 'assets/images/victusSkin.png',
      price: 499,
      description: 'Maroon skin for victus 16 inch laptop'),
];