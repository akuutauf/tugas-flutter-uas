import 'package:flutter/material.dart';

class DataUser {
  String _nim_user = "";
  String _username_user = "";
  String _password_user = "";
  String _nama_user = "";
  String _prodi_user = "";
  String _status_user = "";

  // construktor for login and signup
  DataUser(this._username_user, this._password_user);

  // method getting value for every properties object
  String get nim_user => _nim_user;
  String get username_user => _username_user;
  String get password_user => _password_user;
  String get nama_user => _nama_user;
  String get prodi_user => _prodi_user;
  String get status_user => _status_user;

  // method set for username
  set username(String newUsername) {
    if (newUsername.length <= 20) {
      this._username_user = newUsername;
    }
  }

  // method set for password
  set password(String newPassword) {
    if (newPassword.length <= 8) {
      this._password_user = newPassword;
    }
  }

  // method set for nama
  set nama(String newNama) {
    if (newNama.length <= 60) {
      this._nama_user = newNama;
    }
  }

  // method set for prodi
  set prodi(String newProdi) {
    if (newProdi.length <= 40) {
      this._prodi_user = newProdi;
    }
  }

  // method set for status
  set status(String newStatus) {
    if (newStatus.length <= 10) {
      this._status_user = newStatus;
    }
  }

  // Convert a DataUser object into a Map Object
  Map<String, dynamic> toMap() {
    // making new map for data user
    var mapUser = Map<String, dynamic>();

    // cheking id
    if (nim_user != null) {
      mapUser['nim_user'] = _nim_user;
    }

    mapUser['username_user'] = _username_user;
    mapUser['password_user'] = _password_user;
    mapUser['nama_user'] = _nama_user;
    mapUser['prodi_user'] = _prodi_user;
    mapUser['status_user'] = _status_user;

    return mapUser;
  }

  // extract DataUser Object From Map Object
  DataUser.fromMapObject(Map<String, dynamic> mapUser) {
    // extract properties
    this._nim_user = mapUser['nim_user'];
    this._username_user = mapUser['username_user'];
    this._password_user = mapUser['password_user'];
    this._nama_user = mapUser['nama_user'];
    this._prodi_user = mapUser['prodi_user'];
    this._status_user = mapUser['status_user'];
  }
}
