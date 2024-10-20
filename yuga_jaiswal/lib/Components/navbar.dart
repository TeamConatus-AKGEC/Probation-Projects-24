import 'package:flutter/material.dart';
import 'package:ecommerce_app/Screens/cart.dart';
import 'package:ecommerce_app/Screens/profile.dart';
import 'package:ecommerce_app/main.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          backgroundColor: Colors.white,
          //selectedItemColor: Colors.white,
          //unselectedItemColor: Colors.white.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.orangeAccent),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined, color: Colors.orangeAccent),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
           icon: Icon(Icons.perm_identity_outlined, color: Colors.orangeAccent),
           label: 'Profile',
        ),
      ],
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FlutterApp()));
              break;
            case 1:
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => cart()));
              break;
            case 2:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => profile()));
              break;
            default:
              break;
          }
        }
        );
  }
}