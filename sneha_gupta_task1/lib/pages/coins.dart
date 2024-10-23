import 'package:app_design/widges/widges_support.dart';
import 'package:flutter/material.dart';

class Coins extends StatelessWidget {
  const Coins({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.black,
            ),
          ),
            SizedBox(
              height: 700.0,
              child: Center(
                child: Text('Your earned coins..',
                style: AppWidgets.semiBoldTextFeildStyle(),),
              ),
            )
          ]
        ),

      ),
    );
  }
}
