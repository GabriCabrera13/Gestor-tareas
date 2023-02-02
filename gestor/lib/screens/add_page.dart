import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  AddPage({Key? key}) : super(key: key);

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: (() {
            Navigator.pushReplacementNamed(context, 'toDo');
          }),
        ),
        centerTitle: true,
        title: const Text('Add task'),
      ),
      body: ListView(
        padding: EdgeInsets.all(30),
            children: [
              TextField(
                decoration: InputDecoration(hintText: 'Titulo (Obligatorio)'),
              ),
              TextField(
                decoration: InputDecoration(hintText: 'Fecha (Opcional)'),
              keyboardType: TextInputType.datetime,
              ),
              TextField(
                decoration: InputDecoration(hintText: 'Comentarios (Opcional)'),
                keyboardType: TextInputType.multiline,
                minLines: 5,
                maxLines: 8,
              )
              ,
              TextField(
                decoration: InputDecoration(hintText: 'Descripción (Opcional)'),
                keyboardType: TextInputType.multiline,
                minLines: 5,
                maxLines: 8,
              ),
              TextField(
                decoration: InputDecoration(hintText: 'Tags (Opcional)'),
                 keyboardType: TextInputType.text
              ),
              ElevatedButton(onPressed: (){}, child: Text('Submit task '))
            ],
          ),
    );
  }
}
