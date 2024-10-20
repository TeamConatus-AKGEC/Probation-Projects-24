import 'package:ecommerce_app/Screens/fashion.dart';
import 'package:ecommerce_app/Components/navbar.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/Components/scrollproduct.dart';
import 'package:ecommerce_app/Components/searchbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/Screens/home.dart';
import 'package:ecommerce_app/Screens/mobiles.dart';
import 'package:ecommerce_app/Screens/electronics.dart';
import 'package:ecommerce_app/Components/product.dart';
// import 'package:ecommerce_app/cart.dart';
// import 'package:ecommerce_app/profile.dart';

List<String> imgList = [
  'assets/images/sale.jpg',
  'assets/images/sale6.jpg',
  'assets/images/sale5.jpg',
  'assets/images/sale1.jpg',
  'assets/images/sale2.jpg',
  'assets/images/sale3.jpg',
  'assets/images/sale4.jpg',
];
List<Product> hotSalesProducts = [
  Product(id: 1,name: 'Macbook Air M1', price: '\$29,999', image: 'assets/images/macbook.png'),
  Product(id: 1,name: 'Mixer', price: '\$90', image: 'assets/images/mixer.jpg'),
  Product(id: 1,name: 'iPhone 16', price: '\$990', image: 'assets/images/phone.png'),
  Product(id: 1,name: 'Sony Headphones', price: '\$270', image: 'assets/images/head.png'),
];

List<Product> recentViewedProducts = [
  Product(id: 1,name: 'Macbook Air M1', price: '\$29,999', image: 'assets/images/macbook.png'),
  Product(id: 1,name: 'Macbook Air M1', price: '\$29,999', image: 'assets/images/macbook.png'),
  Product(id: 1,name: 'Macbook Air M1', price: '\$29,999', image: 'assets/images/macbook.png'),
  Product(id: 1,name: 'Macbook Air M1', price: '\$29,999', image: 'assets/images/macbook.png'),
];
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
      appBar: Searchbar(), 
      backgroundColor: Colors.white,
      bottomNavigationBar: Navbar(),
      body: SingleChildScrollView(

        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              //Sales Images
              Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                    viewportFraction: 1.0,
                    enlargeCenterPage: true
                  ),
                  items: imgList
                  .map((item) => Container(
                    padding: EdgeInsets.fromLTRB(5.0,10.0,5.0,10.0),
                    child: Container(
                      width: double.infinity,
                      height: 180,
                      decoration: BoxDecoration(
                         image: DecorationImage(
                            
                            image: AssetImage(item),
                            fit: BoxFit.fitWidth
                         )
                      ),
                         // Image.asset(item, fit: BoxFit.cover)),
                    ),
                    )
                )
                  .toList(),
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
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) => fashion())); 
                      }, 
                      child: Text('Fashion'),
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        foregroundColor: Colors.black87,
                        minimumSize: Size(88, 36),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        )
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(right:12.0)),
                    OutlinedButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) => homes()));
                      }, 
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
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) => Mobiles()));
                      }, 
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
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) => Electronics()));
                      }, 
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
            // Container(
            //   padding: const EdgeInsets.fromLTRB(10.0,0.0,10.0,10.0),
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //         OutlinedButton(
            //           onPressed: (){}, 
            //           child: Text('Fashion'),
            //           style: OutlinedButton.styleFrom(
            //             padding: EdgeInsets.symmetric(horizontal: 16),
            //             foregroundColor: Colors.black87,
            //             minimumSize: Size(88, 36),
            //             shape: const RoundedRectangleBorder(
            //               borderRadius: BorderRadius.all(Radius.circular(15)),
            //             )
            //           ),
            //         ),
            //         Padding(padding: EdgeInsets.only(right:12.0)),
            //         OutlinedButton(
            //           onPressed: (){}, 
            //           child: Text('Home'),
            //           style: OutlinedButton.styleFrom(
            //             padding: EdgeInsets.symmetric(horizontal: 16),
            //             foregroundColor: Colors.black87,
            //             minimumSize: Size(88, 36),
            //             shape: const RoundedRectangleBorder(
            //               borderRadius: BorderRadius.all(Radius.circular(15)),
            //             )
            //           ),
            //         ),
            //         Padding(padding: EdgeInsets.only(right:12.0)),
            //         OutlinedButton(
            //           onPressed: (){}, 
            //           child: Text('Mobiles'),
            //           style: OutlinedButton.styleFrom(
            //             padding: EdgeInsets.symmetric(horizontal: 16),
            //             foregroundColor: Colors.black87,
            //             minimumSize: Size(88, 36),
            //             shape: const RoundedRectangleBorder(
            //               borderRadius: BorderRadius.all(Radius.circular(15)),
            //             )
            //           ),
            //         ),
            //         Padding(padding: EdgeInsets.only(right:12.0)),
            //         OutlinedButton(
            //           onPressed: (){}, 
            //           child: Text('Electronics'),
            //           style: OutlinedButton.styleFrom(
            //             padding: EdgeInsets.symmetric(horizontal: 16),
            //             foregroundColor: Colors.black87,
            //             minimumSize: Size(88, 36),
            //             shape: const RoundedRectangleBorder(
            //               borderRadius: BorderRadius.all(Radius.circular(15)),
            //             )
            //           ),
            //         ),
                    
            //       ],
            //   ),
            // ),

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
                    children: hotSalesProducts.map((product) => scrollproduct(
                        product: product,
                        allProducts: hotSalesProducts,
                    )).toList()
                  
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
                    children: recentViewedProducts.map((product) => scrollproduct(
                        product: product,
                        allProducts: recentViewedProducts,
                    )).toList()

                  ),

                ),
            )
                
          ]
        ),
      )
,
    );
  }
}
    
