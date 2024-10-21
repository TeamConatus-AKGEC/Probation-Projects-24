import 'package:flutter/material.dart';
import 'package:ecommerce_app/Screens/cart.dart';
import 'package:ecommerce_app/Screens/profile.dart';
import 'package:ecommerce_app/main.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.orangeAccent,
          unselectedItemColor: Colors.orangeAccent,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          //currentIndex: selectedIndex,
          items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
           icon: Icon(Icons.perm_identity_outlined),
           label: 'Profile',
        ),
      ],
        onTap: (index) {
        //    setState(() {
        //   selectedIndex = index;  
        // });
          switch (index) {
            case 0:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
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