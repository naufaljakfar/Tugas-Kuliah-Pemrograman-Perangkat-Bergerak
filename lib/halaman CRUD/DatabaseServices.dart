import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DatabaseService {
  static Future<void> createIsiData(
      BuildContext context, String nama, String umur) async {
    DocumentReference DataDiriReference =
        FirebaseFirestore.instance.collection("Data Diri").doc(nama);
    Map<String, dynamic> Data = {"nama": nama, "umur": umur};
    DataDiriReference.set(Data).whenComplete(() {
      Navigator.pop(context);
    });
  }

  static Future<void> DeleteData(String NamaJadi) async {
    CollectionReference DataDiriCollection =
        FirebaseFirestore.instance.collection("Data Diri");
    return await DataDiriCollection.doc(NamaJadi).delete();
  }
}
