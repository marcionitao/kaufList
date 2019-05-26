// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_databse.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps
class Todo {
  final int id;
  final String description;
  final bool completed;
  Todo({this.id, this.description, this.completed});
  factory Todo.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Todo(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      completed:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}completed']),
    );
  }
  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      id: json['id'] as int,
      description: json['description'] as String,
      completed: json['completed'] as bool,
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
      'completed': completed,
    };
  }

  Todo copyWith({int id, String description, bool completed}) => Todo(
        id: id ?? this.id,
        description: description ?? this.description,
        completed: completed ?? this.completed,
      );
  @override
  String toString() {
    return (StringBuffer('Todo(')
          ..write('id: $id, ')
          ..write('description: $description, ')
          ..write('completed: $completed')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      $mrjc($mrjc(0, id.hashCode), description.hashCode), completed.hashCode));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Todo &&
          other.id == id &&
          other.description == description &&
          other.completed == completed);
}

class $TodosTable extends Todos with TableInfo<$TodosTable, Todo> {
  final GeneratedDatabase _db;
  final String _alias;
  $TodosTable(this._db, [this._alias]);
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    var cName = 'id';
    if (_alias != null) cName = '$_alias.$cName';
    return GeneratedIntColumn('id', $tableName, false, hasAutoIncrement: true);
  }

  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    var cName = 'description';
    if (_alias != null) cName = '$_alias.$cName';
    return GeneratedTextColumn('description', $tableName, false,
        minTextLength: 3, maxTextLength: 50);
  }

  GeneratedBoolColumn _completed;
  @override
  GeneratedBoolColumn get completed => _completed ??= _constructCompleted();
  GeneratedBoolColumn _constructCompleted() {
    var cName = 'completed';
    if (_alias != null) cName = '$_alias.$cName';
    return GeneratedBoolColumn(
      'completed',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, description, completed];
  @override
  $TodosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'todos';
  @override
  final String actualTableName = 'todos';
  @override
  bool validateIntegrity(Todo instance, bool isInserting) =>
      id.isAcceptableValue(instance.id, isInserting) &&
      description.isAcceptableValue(instance.description, isInserting) &&
      completed.isAcceptableValue(instance.completed, isInserting);
  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Todo map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Todo.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(Todo d, {bool includeNulls = false}) {
    final map = <String, Variable>{};
    if (d.id != null || includeNulls) {
      map['id'] = Variable<int, IntType>(d.id);
    }
    if (d.description != null || includeNulls) {
      map['description'] = Variable<String, StringType>(d.description);
    }
    if (d.completed != null || includeNulls) {
      map['completed'] = Variable<bool, BoolType>(d.completed);
    }
    return map;
  }

  @override
  $TodosTable createAlias(String alias) {
    return $TodosTable(_db, alias);
  }
}

class Favorite {
  final int id;
  final int idTodo;
  Favorite({this.id, this.idTodo});
  factory Favorite.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return Favorite(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      idTodo:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}id_todo']),
    );
  }
  factory Favorite.fromJson(Map<String, dynamic> json) {
    return Favorite(
      id: json['id'] as int,
      idTodo: json['idTodo'] as int,
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'idTodo': idTodo,
    };
  }

  Favorite copyWith({int id, int idTodo}) => Favorite(
        id: id ?? this.id,
        idTodo: idTodo ?? this.idTodo,
      );
  @override
  String toString() {
    return (StringBuffer('Favorite(')
          ..write('id: $id, ')
          ..write('idTodo: $idTodo')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc($mrjc(0, id.hashCode), idTodo.hashCode));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Favorite && other.id == id && other.idTodo == idTodo);
}

class $FavoritesTable extends Favorites
    with TableInfo<$FavoritesTable, Favorite> {
  final GeneratedDatabase _db;
  final String _alias;
  $FavoritesTable(this._db, [this._alias]);
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    var cName = 'id';
    if (_alias != null) cName = '$_alias.$cName';
    return GeneratedIntColumn('id', $tableName, false, hasAutoIncrement: true);
  }

  GeneratedIntColumn _idTodo;
  @override
  GeneratedIntColumn get idTodo => _idTodo ??= _constructIdTodo();
  GeneratedIntColumn _constructIdTodo() {
    var cName = 'id_todo';
    if (_alias != null) cName = '$_alias.$cName';
    return GeneratedIntColumn(
      'id_todo',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, idTodo];
  @override
  $FavoritesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'favorites';
  @override
  final String actualTableName = 'favorites';
  @override
  bool validateIntegrity(Favorite instance, bool isInserting) =>
      id.isAcceptableValue(instance.id, isInserting) &&
      idTodo.isAcceptableValue(instance.idTodo, isInserting);
  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Favorite map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Favorite.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(Favorite d, {bool includeNulls = false}) {
    final map = <String, Variable>{};
    if (d.id != null || includeNulls) {
      map['id'] = Variable<int, IntType>(d.id);
    }
    if (d.idTodo != null || includeNulls) {
      map['id_todo'] = Variable<int, IntType>(d.idTodo);
    }
    return map;
  }

  @override
  $FavoritesTable createAlias(String alias) {
    return $FavoritesTable(_db, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(const SqlTypeSystem.withDefaults(), e);
  $TodosTable _todos;
  $TodosTable get todos => _todos ??= $TodosTable(this);
  $FavoritesTable _favorites;
  $FavoritesTable get favorites => _favorites ??= $FavoritesTable(this);
  @override
  List<TableInfo> get allTables => [todos, favorites];
}
