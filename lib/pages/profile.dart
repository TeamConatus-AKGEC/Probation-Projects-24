import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PROFILE"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.settings))
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          const Column(
            children: [
              CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1541647249291-71c1d98ce84f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGxhZHl8ZW58MHx8MHx8fDA%3D"),
              ),
              SizedBox(height: 10.0,),
              Text("Sneha Gupta",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                ),
              ),
              Text("Junior App Developer"),
            ],
          ),
          const SizedBox(height: 40.0),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 5.0),
                child: Text("Complete your Profile" ,
                style: TextStyle(fontSize: 15,
                fontWeight: FontWeight.bold),
                ),
              ),
              Text("(1/5)"),
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            children: List.generate(5, (index){
              return Expanded(child: Container(
                height: 7,
                margin: EdgeInsets.only(right: index== 4 ? 0 : 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: index==0 ? Colors.blue : Colors.black12,
                ),
              ),
              );
            }
            )
          )
        ],
      ),
    );
  }
}
