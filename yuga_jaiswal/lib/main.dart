import 'package:ecommerce_app/navbar.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/scrollproduct.dart';
// import 'package:ecommerce_app/cart.dart';
// import 'package:ecommerce_app/profile.dart';
void main() {
  runApp(FlutterApp());
} 

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: "eCommerce App",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ); //MaterialApp
  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:   AppBar(
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
      backgroundColor: Colors.white,
      body: buildscroll(),
      bottomNavigationBar: Navbar()
      
    );
  }
}

Widget buildscroll()=>
      SingleChildScrollView(

        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              //Sales Images
              Container(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: double.infinity,
                  height: 180,
                  decoration: BoxDecoration(
                    //border: Border.all(),
                    borderRadius:  BorderRadius.circular(30.0),
                    image: DecorationImage(
                      image: AssetImage('assets/images/sale.jpg'),
                      fit: BoxFit.cover
                    )
                  ),
                )
                ),
              //Quick Categories Section
              Container(
              padding: const EdgeInsets.fromLTRB(10.0,0.0,10.0,10.0),
              
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    OutlinedButton(
                      onPressed: (){}, 
                      child: Text('Fashion'),
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        foregroundColor: Colors.black87,
                        minimumSize: Size(88, 36),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        )
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(right:12.0)),
                    OutlinedButton(
                      onPressed: (){}, 
                      child: Text('Home'),
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        foregroundColor: Colors.black87,
                        minimumSize: Size(88, 36),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        )
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(right:12.0)),
                    OutlinedButton(
                      onPressed: (){}, 
                      child: Text('Mobiles'),
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        foregroundColor: Colors.black87,
                        minimumSize: Size(88, 36),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        )
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(right:12.0)),
                    OutlinedButton(
                      onPressed: (){}, 
                      child: Text('Electronics'),
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        foregroundColor: Colors.black87,
                        minimumSize: Size(88, 36),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        )
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),

            //Hot Sales Text
            Container(
              padding: const EdgeInsets.fromLTRB(10.0,0.0,10.0,10.0),
              child: Text(
                'Hot sales',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            
            //Hot Sales Products  
            Container(
                padding: const EdgeInsets.fromLTRB(10.0,0.0,10.0,10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                          scrollproduct(
                                image: 'assets/images/macbook.png', 
                                name: 'Macbook Air M1',
                                price: '\$29,999',
                           ),
                          scrollproduct(
                                image: 'assets/images/macbook.png',
                                name: 'Macbook Air M1',
                                price: '\$29,999',
                           ),
                          scrollproduct(
                                image: 'assets/images/macbook.png', 
                                name: 'Macbook Air M1',
                                price: '\$29,999',
                           ),
                          scrollproduct(
                                image: 'assets/images/macbook.png', 
                                name: 'Macbook Air M1',
                                price: '\$29,999',
                           ),      
                    ],

                  ),

                ),
            ),

            //Recent Text
            Container(
              padding: const EdgeInsets.fromLTRB(10.0,0.0,10.0,10.0),
              child: Text(
                'Recent Viewed',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            
            //Recent Products  
            Container(
                padding: const EdgeInsets.fromLTRB(10.0,0.0,10.0,10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                          scrollproduct(
                                image: 'assets/images/macbook.png', 
                                name: 'Macbook Air M1',
                                price: '\$29,999',
                           ),
                          scrollproduct(
                                image: 'assets/images/macbook.png', 
                                name: 'Macbook Air M1',
                                price: '\$29,999',
                           ),
                          scrollproduct(
                                image: 'assets/images/macbook.png', 
                                name: 'Macbook Air M1',
                                price: '\$29,999',
                           ),
                          scrollproduct(
                                image: 'assets/images/macbook.png', 
                                name: 'Macbook Air M1',
                                price: '\$29,999',
                           ),      
                    ],

                  ),

                ),
            )
                
          ]
        ),
      );

    
