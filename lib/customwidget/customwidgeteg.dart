import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customwidgeteg extends StatelessWidget {
  //const customwidgeteg({super.key});
final Image img;
final Text titl;
final Text? subtitl;
final Icon ? icn;
final VoidCallback onpress;
customwidgeteg({required this.img, required this.titl, this.subtitl, this.icn, required this.onpress});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        child: ListTile(
          title: titl,
          leading: img,
          subtitle: subtitl,
          trailing: icn,
          onTap: onpress,
        ),
      ),
    );
  }
}
