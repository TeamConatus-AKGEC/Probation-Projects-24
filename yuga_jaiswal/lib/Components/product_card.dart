import 'package:flutter/material.dart';
import 'package:ecommerce_app/Components/product.dart';

class ProductCard extends StatefulWidget {

  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(padding: EdgeInsets.fromLTRB(0.0, 10.0, 5.0, 0.0)),
              Icon(
                Icons.favorite_border_outlined,
                color: Colors.orangeAccent
              )
            ],
          ),
          SizedBox(
            height: 110,
            width:double.infinity,
            child: Image.asset(widget.product.image, fit: BoxFit.contain),
            ),
            Text(
              widget.product.name, style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold)
            ),
            Text(widget.product.price,style:TextStyle(fontSize: 16,fontWeight: FontWeight.normal)),
            // Text('Free Shipping', style: TextStyle(
            //   fontSize: 16,
            //   fontWeight: FontWeight.normal,
            //   color: Colors.purple[100]))
            ElevatedButton(
            onPressed: () {
              // Define action on press, such as adding to cart or navigating
              print("Free Shipping clicked");
            },
            child: Text('Free Shipping'),
            
            )
            
        ],
      ),
    );
  }
}