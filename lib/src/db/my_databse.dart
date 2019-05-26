import 'package:moor_flutter/moor_flutter.dart';

// assuming that your file is called filename.dart. This will give an error at first,
// but it's needed for moor to know about the generated code
part 'my_databse.g.dart'; 

class Todos extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get description => text().withLength(min:3, max:50)();
  BoolColumn get completed => boolean()();
}

class Favorites extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get idTodo => integer().nullable()();
}

// adicionar  _$MyDatabase manualmente
// depois o comando: "flutter packages pub run build_runner build"
@UseMoor(tables:[Todos, Favorites])
class MyDatabase extends _$MyDatabase{

  // Definimos aqui um singleton, Este padrão garante a existência de apenas uma instância 
  // de uma classe, mantendo um ponto global de acesso ao seu objeto.
  static final MyDatabase instance = MyDatabase._internal();
  MyDatabase._internal() : super(FlutterQueryExecutor.inDatabaseFolder(path: 'db.sqlite'));

  // Metodos DAO

  /* Sem ser Reative
  Future<List<Todo>> getAllTodos(){
    return select(todos).get();
  }*/

  // Para ser Reactive
   Stream<List<Todo>> getAllTodos(){
    return select(todos).watch();
  }

  @override 
  int get schemaVersion => 1;
}