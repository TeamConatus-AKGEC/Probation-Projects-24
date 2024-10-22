import 'package:classico/products.dart';
import 'package:flutter/material.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[Text("Colors"),
            Row(
              children: <Widget>[
                ColorDot(color: Colors.black,isSelected: true,),
                ColorDot(color: Colors.grey),
                ColorDot(color: Colors.red)
              ]
          )],
          ),
        ),
        Expanded(
          child: RichText(text: TextSpan(
            style: TextStyle(color: Colors.black),
            children: [
              TextSpan(text: 'Size\n'
              ),
              TextSpan(text: "${product.size}",style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.bold))
            ]
          )),
        )
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    super.key, required this.color, this.isSelected=false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 60, right: 10),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle, border: Border.all(color:isSelected? color:Colors.transparent)),
      child: DecoratedBox(
          decoration:
              BoxDecoration(color: color, shape: BoxShape.circle)),
    );
  }
}