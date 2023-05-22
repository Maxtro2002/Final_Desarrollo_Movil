import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;

Future<List> getPlaca() async {
  List placa = [];
  CollectionReference collectionReferencePlaca = firestore.collection('placa');

  QuerySnapshot queryPlaca = await collectionReferencePlaca.get();

  queryPlaca.docs.forEach((element) {
    placa.add(element.data());
  });

  return placa;
}