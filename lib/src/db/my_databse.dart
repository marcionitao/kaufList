import 'package:flutter/material.dart';
import 'package:moor_flutter/moor_flutter.dart';

class Todos extends Table {

}

class Favorites extends Table {

}

// configura DB
@UseMoor(tables:[Todos, Favorites])
class MyDatabase {

}