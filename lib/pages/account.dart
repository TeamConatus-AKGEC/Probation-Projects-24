import 'package:app_design/pages/coins.dart';
import 'package:app_design/pages/profile_list.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  static const textStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.w500);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: const Text(
              "Hey! Sneha Gupta",
              style: TextStyle(color: Colors.black),
            ),
            actions:  [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Coins()),
                  );
                },
                icon: const Icon(Icons.monetization_on_outlined),
                padding: const EdgeInsets.all(10.0),
              ),
            ],
            bottom: const TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 8),
                tabs: [
                  Tab(
                    text: 'Orders',
                  ),
                  Tab(
                    text: 'Wishlist',
                  ),
                  Tab(
                    text: 'Profile',
                  ),
                ]),
          ),
          body: const TabBarView(children: [
            Center(
                child: Text(
                  "Orders",
                  style: textStyle,
                )),
            Center(
                child: Text(
                  "Wishlist",
                  style: textStyle,
                )),
            Center(
                child:
                  ProfileList(),
            ),
          ]),
        ));
  }
}



