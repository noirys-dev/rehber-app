import 'package:flutter/material.dart';
import 'package:kisiler_uygulamasi/data/entity/kisiler.dart';

class DetaySayfa extends StatefulWidget {
  Kisiler kisi;

  DetaySayfa({required this.kisi});

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  var tfKisiAdi = TextEditingController();
  var tfKisiTel = TextEditingController();

  Future<void> guncelle(int kisi_id, String kisi_adi, String kisi_tel) async {
    print("Kişiyi Güncelle: ${kisi_id} - ${kisi_adi} - ${kisi_tel}");
  }

  @override
  void initState() {
    super.initState();
    var kisi = widget.kisi;
    tfKisiAdi.text = kisi.kisi_ad;
    tfKisiTel.text = kisi.kisi_tel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detay Sayfa")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: tfKisiAdi,
                decoration: InputDecoration(hintText: "Kişi Adı"),
              ),
              TextField(
                controller: tfKisiTel,
                decoration: InputDecoration(hintText: "Telefon Numarası"),
              ),
              ElevatedButton(
                onPressed: () {
                  guncelle(widget.kisi.kisi_id, tfKisiAdi.text, tfKisiTel.text);
                },
                child: Text("GÜNCELLE"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
