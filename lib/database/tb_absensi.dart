import 'package:flutter/material.dart';

class Absensi {
  String _nim_user_abs = "";
  String _nama_user_abs = "";
  String _waktu_absen = "";
  String _keterangan_absen = "";

  // construktor for abscent
  Absensi(this._nim_user_abs, this._waktu_absen, this._keterangan_absen);

  // method for getting value
  String get nim_user_abs => _nim_user_abs;
  String get nama_user_abs => _nama_user_abs;
  String get waktu_absen => _waktu_absen;
  String get keterangan_absen => _waktu_absen;

  // method set for nama
  set nama(String newNama) {
    if (newNama.length <= 60) {
      this._nama_user_abs = newNama;
    }
  }

  // method set for waktu absen
  set waktu(String newWaktu) {
    this._waktu_absen = newWaktu;
  }

  // method set for keterangan
  set keterangan(String newKeterangan) {
    if (newKeterangan.length <= 10) {
      this._keterangan_absen = newKeterangan;
    }
  }

  // Convert a DataUser object into a Map Object
  Map<String, dynamic> toMap() {
    // making new map
    var mapAbscent = Map<String, dynamic>();

    // cheking id
    if (nim_user_abs != null) {
      mapAbscent['nim_user_abs'] = _nim_user_abs;
    }

    mapAbscent['nama_user_abs'] = _nama_user_abs;
    mapAbscent['waktu_absen'] = _waktu_absen;
    mapAbscent['keterangan_absen'] = _keterangan_absen;

    return mapAbscent;
  }

  // extract DataUser Object From Map Object
  Absensi.fromMapObject(Map<String, dynamic> mapUser) {
    // extract properties
    this._nim_user_abs = mapUser['nim_user_abs'];
    this._nama_user_abs = mapUser['nama_user_abs'];
    this._waktu_absen = mapUser['waktu_absen'];
    this._keterangan_absen = mapUser['keterangan_absen'];
  }
}
