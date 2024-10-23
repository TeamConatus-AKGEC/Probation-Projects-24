import 'package:flutter/material.dart';

class ShowMenu extends StatefulWidget {
  const ShowMenu({super.key});

  @override
  State<ShowMenu> createState() => _ShowMenuState();
}

class _ShowMenuState extends State<ShowMenu> {
  @override
  Widget build(BuildContext context) {
      return Container(
        color: Colors.red[300],
        width: double.infinity,
        height: 200,
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10.0),
              height: 70,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage('images/lights.jpg'))
              ),
            ),
            const Text("Sneha Gupta" , style: TextStyle(color: Colors.white , fontSize: 20.0),),
            Text("info@apptech.dev" , style: TextStyle(color: Colors.grey[200] , fontSize: 14.0),)
          ],
        ),
      );
  }
}

class DrawerList extends StatelessWidget {
  const DrawerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15.0),
      child: Column(
        children: [
          menuItem(1 , "Dashboard" , Icons.dashboard_outlined),
          menuItem(2 , "Contacts" , Icons.people_alt_outlined),
          menuItem(3 , "Events" , Icons.event),
          menuItem(4 , "Notes" , Icons.note),
          menuItem(5 , "Setting" , Icons.settings_outlined),
        ],
      ),
    );
  }
}

Widget menuItem(int id , String title , IconData icon){
  return Material(
    child: InkWell(
      onTap: () {

      },
      child:Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Expanded(child:
            Icon(icon,
              size: 20,
              color: Colors.black,
            ),
            ),
            const SizedBox(width: 10),
            Expanded(
              flex: 3,
              child:
              Text(title ,
                style:
                const TextStyle(
                    color: Colors.black ,
                    fontSize: 16.0),
              ),
            ),
          ],
        ),),
    ),
  );
}

enum DrawSections {
  dashboard,
  contact,
  events,
  notes,
  setting,
}






