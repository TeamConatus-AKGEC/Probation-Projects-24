import 'package:ecommerce_app/Components/navbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ecommerce_app/Screens/Notification.dart';
class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: "Profile",
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
              "Profile",
               style: GoogleFonts.poppins(fontSize: 40.0, fontWeight: FontWeight.bold)
              ),
                centerTitle: true,
                backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        bottomNavigationBar: Navbar(),
        body: ListView(
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: CircleAvatar(
                backgroundImage: AssetImage('asssets/images/self.jpg'),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: TextButton(
                onPressed: (){},
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,  // Ensures the Row takes only the required space
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 15),
                          Icon(Icons.person_outline_rounded,size: 30),
                          SizedBox(width: 75),  // Controls the space between the icon and text
                          Text("My Account",style: TextStyle(fontSize: 18,color: Colors.black),),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_forward_ios_rounded,size: 30,color: Colors.grey,),
                          SizedBox(width: 15),
                        ]
                      )
                    ],
                  ),

                style: TextButton.styleFrom(
                       padding: EdgeInsets.symmetric(vertical: 15),
                       iconColor: Colors.orangeAccent,
                        backgroundColor: Colors.grey[200],
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        ),
                
                  ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: TextButton(
                onPressed: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Notify()));
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,  // Ensures the Row takes only the required space
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 15),
                          Icon(Icons.notifications_none_outlined,size: 30),
                          SizedBox(width: 75),  // Controls the space between the icon and text
                          Text("Notification",style: TextStyle(fontSize: 18,color: Colors.black),),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_forward_ios_rounded,size: 30,color: Colors.grey,),
                          SizedBox(width: 15),
                        ]
                      )
                    ],
                  ),

                style: TextButton.styleFrom(
                       padding: EdgeInsets.symmetric(vertical: 15),
                       iconColor: Colors.orangeAccent,
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
                          SizedBox(width: 15),
                          Icon(Icons.settings_outlined,size: 30),
                          SizedBox(width: 75),  // Controls the space between the icon and text
                          Text("Settings",style: TextStyle(fontSize: 18,color: Colors.black),),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_forward_ios_rounded,size: 30,color: Colors.grey,),
                          SizedBox(width: 15),
                        ]
                      )
                    ],
                  ),

                style: TextButton.styleFrom(
                       padding: EdgeInsets.symmetric(vertical: 15),
                       iconColor: Colors.orangeAccent,
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
                          SizedBox(width: 15),
                          Icon(Icons.help_outline_rounded,size: 30),
                          SizedBox(width: 75),  // Controls the space between the icon and text
                          Text("Help Center",style: TextStyle(fontSize: 18,color: Colors.black),),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_forward_ios_rounded,size: 30,color: Colors.grey,),
                          SizedBox(width: 15),
                        ]
                      )
                    ],
                  ),

                style: TextButton.styleFrom(
                       padding: EdgeInsets.symmetric(vertical: 15),
                       iconColor: Colors.orangeAccent,
                        backgroundColor: Colors.grey[200],
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        ),
                
                  ),
            )
            
          ],
        ),
    );
  }
}