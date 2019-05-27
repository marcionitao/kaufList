import 'package:flutter/material.dart';
import 'package:kauflist/src/home/MyHomePage.dart';
import 'package:kauflist/src/db/my_databse.dart';

class AddTodo extends StatefulWidget {
  @override
  _AddTodoState createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {

  String text = "";// para adicionar o novo item

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add"),),
      body: Column(
          children: <Widget>[
            TextField(
              onChanged: (value){text = value;},
            ),
            RaisedButton(onPressed: () async {
              // Guarda na DB
              await MyDatabase.instance.addTodo(Todo(description: text, completed: false));
              // Retorna a pagina de List
              Navigator.pop(context);
            }, child: Text("Adicionar"),)
          ],
        ),
    );
  }
}