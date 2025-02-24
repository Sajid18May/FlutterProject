import 'package:sqflite/sqflite.dart';

class DbHelper{
  ///Singleton
  DbHelper._();

  static final DbHelper getInstance= DbHelper._();

  Database? mydb;
}