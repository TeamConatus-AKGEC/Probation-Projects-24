import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final TextEditingController _taskController = TextEditingController();
  final CollectionReference tasks =
      FirebaseFirestore.instance.collection('tasks');
  final User? user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To-Do List'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.pushNamedAndRemoveUntil(
                  context, 'login', (route) => false);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _taskController,
              decoration: InputDecoration(
                labelText: 'New Task',
                suffixIcon: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () => addTask(),
                ),
              ),
            ),
          ),
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: tasks.where('userId', isEqualTo: user?.uid).snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) return CircularProgressIndicator();
                final taskDocs = snapshot.data!.docs;
                return ListView.builder(
                  itemCount: taskDocs.length,
                  itemBuilder: (context, index) {
                    final task = taskDocs[index];
                    return ListTile(
                      title: Text(task['task']),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () => updateTask(task),
                          ),
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () => deleteTask(task.id),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void addTask() {
    if (_taskController.text.isNotEmpty) {
      tasks.add({
        'task': _taskController.text,
        'userId': user?.uid,
        'timestamp': FieldValue.serverTimestamp(),
      });
      _taskController.clear();
    }
  }

  void updateTask(DocumentSnapshot task) {
    _taskController.text = task['task'];
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Update Task"),
        content: TextField(
          controller: _taskController,
          decoration: InputDecoration(labelText: "Task"),
        ),
        actions: [
          TextButton(
            onPressed: () {
              tasks.doc(task.id).update({'task': _taskController.text});
              _taskController.clear();
              Navigator.of(context).pop();
            },
            child: Text("Update"),
          ),
        ],
      ),
    );
  }

  void deleteTask(String taskId) {
    tasks.doc(taskId).delete();
  }
}
