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
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search , color: Colors.grey,),
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
      ),
      )
    );
  }
}



