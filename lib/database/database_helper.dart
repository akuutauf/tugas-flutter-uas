import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:async';
import 'dart:io';
import 'tb_absensi.dart';
import 'tb_data_user.dart';

// Class Database Helper
class DatabaseHelper {
  // singleton database helper
  static DatabaseHelper _databaseHelper = DatabaseHelper();
  static Database? _database;

  // column table tb_user
  String tb_user = 'tb_user';
  String nim_user = 'nim_user';
  String username_user = 'username_user';
  String password_user = 'password_user';
  String nama_user = 'nama_user';
  String prodi_user = 'prodi_user';
  String status_user = 'status_user';

  // column table tb_absensi
  String tb_absensi = 'tb_absensi';
  String nim_user_abs = 'nim_user_abs';
  String nama_user_abs = 'nama_user_abs';
  String waktu_absen = 'waktu_absen';
  String keterangan_absen = 'keterangan_absen';

  // Object for factory construktor
  DatabaseHelper._createInstance();

  // factory construktor
  factory DatabaseHelper() {
    if (_databaseHelper == null) {
      _databaseHelper = DatabaseHelper._createInstance();
    }

    return _databaseHelper;
  }

  // method for get database (not fix)
  // Future<Database> get database async {
  //   if (_database == null) {
  //     _database = await initializeDatabase();
  //   }

  //   // return _database;
  // }

  // function to initialize database
  Future<Database> initializeDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String pathDatabase = directory.path + 'db_presensi';

    var createDB =
        await openDatabase(pathDatabase, version: 1, onCreate: _createDB);

    return createDB;
  }

  // function to create table tb_user
  void _createDB(Database db, int newVersion) async {
    await db.execute(
        'CREATE TABLE $tb_user($nim_user INTEGER PRIMARY KEY AUTOINCREMENT, $username_user TEXT, $password_user TEXT, $nama_user TEXT, $prodi_user TEXT, $status_user TEXT)');
    await db.execute(
        'CREATE TABLE $tb_absensi($nim_user_abs INTEGER PRIMARY KEY AUTOINCREMENT, $nama_user_abs TEXT, $waktu_absen TEXT, $keterangan_absen TEXT)');
  }
}
