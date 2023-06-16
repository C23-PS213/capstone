//import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
   String? uid;
   String? email;
   String? password;
   int? phone;
   String? namaLengkap;
   String? namaPanggilan;
   int? usia;

  UserModel(
      {this.uid,
      this.email,
      this.password,
      this.phone,
        this.namaLengkap,
        this.namaPanggilan,
        this.usia,
      });

  UserModel.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    email = json['email'];
    password = json['password'];
    phone = json['phone'] != null ? int.tryParse(json['phone']) : null;
    namaLengkap = json['namaLengkap'];
    namaPanggilan = json['namaPanggilan'];
    usia = json['usia'] != null ? int.tryParse(json['usia']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['uid'] = uid;
    data['email'] = email;
    data['password'] = password;
    data['phone'] = phone;
    data['namaLengkap'] = namaLengkap;
    data['namaPanggilan'] = namaPanggilan;
    data['usia'] = usia;
    return data;
  }
  // User.fromJson(Map<String, dynamic> json) {
  //   uid = json['uid'];
  //   email = json['email'];
  //   password = json['password'];
  //   namaLengkap = json['namaLengkap'];
  //   namaPanggila = json['namaPanggila'];
  //   phone = json['phone'];
  //   usia = json['usia'];
  //   jenisKelamin = json['jenisKelamin'];
  // }

  // Map<String, dynamic> toJson() {
  //   final data = <String, dynamic>{};
  //   data['uid'] = uid;
  //   data['email'] = email;
  //   data['password'] = password;
  //   data['namaLengkap'] = namaLengkap;
  //   data['namaPanggila'] = namaPanggila;
  //   data['phone'] = phone;
  //   data['usia'] = usia;
  //   data['jenisKelamin'] = jenisKelamin;
  //   return data;
  // }
}
