import 'package:flutter/material.dart';
import 'package:gestor/screens/add_page.dart';
import 'package:gestor/screens/toDo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
       initialRoute: 'toDo',
      routes: { 
        'toDo': (_) =>  Todo(),
        'add': (_) =>  AddPage(),
      },
    );
  }
}

