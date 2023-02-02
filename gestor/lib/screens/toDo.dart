import 'package:flutter/material.dart';
import 'package:gestor/screens/add_page.dart';

class Todo extends StatefulWidget {
  Todo({Key? key}) : super(key: key);

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('To do app'),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.pushReplacementNamed(context, 'add');
          },
          label: const Text('Add task')),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('sample text'),
          );
        },
      ),
    );
  }
}
