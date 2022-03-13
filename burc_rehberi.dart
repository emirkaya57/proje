import 'package:burc_uygulamasi/burc_%C4%B1tems.dart';
import 'package:burc_uygulamasi/data/burc.dart';
import 'package:burc_uygulamasi/strings.dart/strings.dart';
import 'package:flutter/material.dart';

class BurcListesi extends StatelessWidget {
  late List<Burc>tumBurclar;
  BurcListesi(){
    tumBurclar = veriKaynaginiOlustur();
    print(tumBurclar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text('Burç Rehberi')),
    body: Center(
      child: ListView.builder(itemBuilder: ((context, index) {
        return BurcItem(listelenenburc: tumBurclar[index]);
      }) ,itemCount: tumBurclar.length,) 
    ),
    ); 
  }

  veriKaynaginiOlustur() {
    List<Burc> gecici = [];
     for (int i = 0; i < 13; i++) {
      var burcadi =Strings.Burc_Adlari[i];
      var burctarihi = Strings.Burc_Tarihleri[i];
      var burcdetay = Strings.BURC_GENEL_OZELLIKLERI[i];
      var burcKucukResim = Strings.Burc_Adlari[i].toLowerCase() + "${i+1}.png";
      var burcBuyukResim = Strings.Burc_Adlari[i].toLowerCase() + "_buyuk' + '${i+1}.png";
      Burc eklenecekBurc = Burc(burcadi,burctarihi,burcdetay,burcKucukResim,burcBuyukResim);
      gecici.add(eklenecekBurc);
      
    } 

    
    return gecici;
  }
}