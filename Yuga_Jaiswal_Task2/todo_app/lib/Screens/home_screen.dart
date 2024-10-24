import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    TaskList(),
    Center(child: Text('Calendar Screen')),
    Center(child: Text('Create Task Screen')),
    Center(child: Text('Search Screen')),
    Center(child: Text('Profile Screen')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello Stephen"),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              "Today is Thursday, March 23",
              style: TextStyle(color: Colors.white70, fontSize: 14),
            ),
          ),
        ),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: 'Create',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

class TaskList extends StatelessWidget {
  final List<Map<String, dynamic>> tasks = [
    {
      'title': 'Karaoke Mobile App',
      'description': 'Create an application UI design for karaoke that can be done alone or together.',
      'date': 'April 20, 2023',
      'time': '10:00 AM',
      'progress': 50,
      'priority': 'High Priority',
    },
    {
      'title': 'Meeting About Previous Task',
      'description': 'Regular Morning Meeting',
      'date': 'April 20, 2023',
      'time': '08:00 AM',
      'progress': 100,
      'priority': 'Completed',
    },
    {
      'title': 'Meeting With Client',
      'description': 'Karaoke Mobile App',
      'date': 'April 20, 2023',
      'time': '10:00 AM',
      'progress': 25,
      'priority': 'On Processing',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8.0),
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: TaskCard(
            title: tasks[index]['title'],
            description: tasks[index]['description'],
            date: tasks[index]['date'],
            time: tasks[index]['time'],
            progress: tasks[index]['progress'],
            priority: tasks[index]['priority'],
          ),
        );
      },
    );
  }
}

class TaskCard extends StatelessWidget {
  final String title;
  final String description;
  final String date;
  final String time;
  final int progress;
  final String priority;

  const TaskCard({
    required this.title,
    required this.description,
    required this.date,
    required this.time,
    required this.progress,
    required this.priority,
  });

  @override
  Widget build(BuildContext context) {
    Color getPriorityColor() {
      switch (priority) {
        case 'High Priority':
          return Colors.red;
        case 'Completed':
          return Colors.green;
        case 'On Processing':
          return Colors.orange;
        default:
          return Colors.blue;
      }
    }

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  priority,
                  style: TextStyle(
                    color: getPriorityColor(),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('$progress%'),
              ],
            ),
            const SizedBox(height: 5),
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 5),
            Text(description),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.calendar_today, size: 16),
                const SizedBox(width: 5),
                Text(date),
                const SizedBox(width: 20),
                const Icon(Icons.access_time, size: 16),
                const SizedBox(width: 5),
                Text(time),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
