import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ecommerce_app/Components/navbar.dart';
class Notify extends StatelessWidget {
  const Notify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
              "Notification",
               style: GoogleFonts.poppins(fontSize: 40.0, fontWeight: FontWeight.bold)
              ),
                centerTitle: true,
                backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        bottomNavigationBar: Navbar(),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: TextButton(
                onPressed: (){},
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,  // Ensures the Row takes only the required space
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                         image: DecorationImage(
                            
                            image: AssetImage('assets/images/macbook.png'),
                            fit: BoxFit.fitWidth
                         )
                      ),
                          ),
                          SizedBox(width: 30),  // Controls the space between the icon and text
                          Text("Your order will be \ndelivered by tomorrow",style: TextStyle(fontSize: 16,color: Colors.grey[700]),),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_forward_ios_rounded,size: 30,color: Colors.grey,),
                        ]
                      )
                    ],
                  ),
              

                style: TextButton.styleFrom(
                       backgroundColor: Colors.grey[200],
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        ),
                
                  ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: TextButton(
                onPressed: (){},
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,  // Ensures the Row takes only the required space
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                         image: DecorationImage(
                            
                            image: AssetImage('assets/images/mixer.jpg'),
                            fit: BoxFit.fitWidth
                         )
                      ),
                          ),
                          SizedBox(width: 30),  // Controls the space between the icon and text
                          Text("40% OFF on Philip Mixer",style: TextStyle(fontSize: 15.4,color: Colors.grey[700]),),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_forward_ios_rounded,size: 30,color: Colors.grey,),
                        ]
                      )
                    ],
                  ),
              

                style: TextButton.styleFrom(
                       backgroundColor: Colors.grey[200],
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        ),
                
                  ),
            ),
            
          ],
        ),
    );
  }
}