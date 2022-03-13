// ignore: file_names
import 'package:burc_uygulamasi/data/burc.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenburc;
  const BurcItem({ required this.listelenenburc,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myStyle = Theme.of(context).textTheme;
    return Card(
      child: ListTile(
        leading: Image.asset("images/${listelenenburc.burcKucukResim}" ),
        title: Text(listelenenburc.burcAdi,style: myStyle.headline6,),
        subtitle: Text(listelenenburc.burcTarihi , style: myStyle.subtitle2,),
        // ignore: prefer_const_constructors
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}