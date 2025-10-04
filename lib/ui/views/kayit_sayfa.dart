import 'package:flutter/material.dart';

class KayitSayfa extends StatefulWidget {
  const KayitSayfa({super.key});

  @override
  State<KayitSayfa> createState() => _KayitSayfaState();
}

class _KayitSayfaState extends State<KayitSayfa> {
  var tfKisiAdi = TextEditingController();
  var tfKisiTel = TextEditingController();

  Future<void> kaydet(String kisi_adi, String kisi_tel) async {
    print("Kişi Kaydet: ${kisi_adi} - ${kisi_tel}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kayıt Sayfa")),
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
                  kaydet(tfKisiAdi.text, tfKisiTel.text);
                },
                child: Text("KAYDET"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
