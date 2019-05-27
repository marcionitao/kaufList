import 'package:flutter/material.dart';
import 'package:kauflist/src/addTodo/addTodo.dart';
import 'package:kauflist/src/db/my_databse.dart';

class MyHomePage extends StatefulWidget {
 
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(       
      title: Text("KaufList"),
      actions: <Widget>[
        // para adicionar um novo item
        IconButton(icon: Icon(Icons.add), onPressed: () {
          // chama a pagina 'addTodo'
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => AddTodo()));
        },)
      ],
      ),
      // para listar na tela os itens
      body: StreamBuilder<List<Todo>>(
        // trazendo os dados da my_databse
        stream: MyDatabase.instance.getAllTodos(),
        initialData: [], // importante, iniciando a lista sem erro
        builder: (context, snapshot) {
          // inserindo os itens numa lista
          List<Todo> list = snapshot.data; // 33:32

          return ListView.builder(
            itemCount: list.length, // conta os itens da list
            itemBuilder: (context, index) {
              return ListTile(
                leading: IconButton(icon: Icon(Icons.delete), onPressed: () {
                  MyDatabase.instance.deleteTodo(list[index].id);
                },),
                title: Text(list[index].description),
                );
            },);
        },),
    );
  }
}