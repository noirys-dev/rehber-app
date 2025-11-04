import 'dart:collection';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kisiler_uygulamasi/data/entity/kisiler.dart';

class KisilerdaoRepository {
  var collectionKisiler = FirebaseFirestore.instance.collection("Kisiler");

  Future<void> kaydet(String kisi_adi, String kisi_tel) async {
    var yeniKisi = HashMap<String, dynamic>();
    yeniKisi["kisi_id"] = "";
    yeniKisi["kisi_ad"] = kisi_adi;
    yeniKisi["kisi_tel"] = kisi_tel;

    collectionKisiler.add(yeniKisi);
  }

  Future<void> guncelle(
    String kisi_id,
    String kisi_adi,
    String kisi_tel,
  ) async {
    var guncellenenKisi = HashMap<String, dynamic>();
    guncellenenKisi["kisi_ad"] = kisi_adi;
    guncellenenKisi["kisi_tel"] = kisi_tel;

    collectionKisiler.doc(kisi_id).update(guncellenenKisi);
  }

  Future<void> sil(String kisi_id) async {
    collectionKisiler.doc(kisi_id).delete();
  }
}
