import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void main() async{
  runApp(MyApp());
  // Firestore.instance.collection("mensagens").document().setData({
  //   "texto":"tudo bem",
  //   "from":"Dayana Rosa",
  //   "read":false
  // });

  //busca simples varios documentos de uma coleção
  //  QuerySnapshot snapshot = await Firestore.instance.collection("mensagens").getDocuments();
  //  snapshot.documents.forEach((d) {
  //    print(d.data);
  //    print(d.documentID);
  //    d.reference.updateData({"read":false}); // Atualiza buscndo a referencia do documento
  //  });

   //Busca por documento especifico
   // DocumentSnapshot docSnapshot = await Firestore.instance.collection("mensagens").document("0jEYpU5mI0ck0n4zfqsC").get();
   // print(docSnapshot.data);

  // Busca e atualiza automaticamente
  // Firestore.instance.collection("mensagens").snapshots().listen((dado) {
  //   dado.documents.forEach((d) {
  //     print(d.data);
  //   });
  // });

  Firestore.instance.collection("mensagens").document("msg1").snapshots().listen((d) {
      print(d.data);
    });
  }


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(),
    );
  }
}
