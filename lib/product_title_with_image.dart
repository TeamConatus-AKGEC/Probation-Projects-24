import 'package:classico/products.dart';
import 'package:flutter/material.dart';


class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[Text("", style: TextStyle(color: Colors.white)
        ),
        Text(product.title, style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.white,fontWeight: FontWeight.bold)
        ),
        
        Row(
          children: <Widget>[
            RichText(
              text: TextSpan(
                children:[
                  TextSpan(text: "Price\n"),
                  TextSpan(text: "₹${product.price}", style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.white,fontWeight: FontWeight.bold))
                ],
              )),
              SizedBox(width: 50,),
              Expanded(child: Image.asset(product.image,fit: BoxFit.fitWidth,))
          ],
        )
        ],
      ),
    );
  }
}