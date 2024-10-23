import 'package:flutter/material.dart';


class MyWidget extends StatelessWidget {
  final String title;
  final String message;

  MyWidget({
    required this.title,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title),
        Text(message),
      ],
    );
  }
}
