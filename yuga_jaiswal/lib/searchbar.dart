import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget implements PreferredSizeWidget{
  const Searchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white ,
        title: TextFormField(
              
              decoration: InputDecoration(
                  hintText: 'Search products',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide.none,
                  ),
                  fillColor: Colors.grey[200],
                  filled: true,
               ),
            onSaved: (String? value) {
            }
          ),
          actions: [
            Ink(
              padding: EdgeInsets.fromLTRB(0.0,0.0,10.0,0.0), 
              decoration: ShapeDecoration(
            
            color: Colors.grey[200],
            shape: CircleBorder(),
          ),
          child: IconButton(
            icon: Icon(Icons.notifications_outlined),
            color: Colors.grey,
            iconSize: 40.0,
            onPressed: () {},
          ),
        ),
        ],
      ),
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}