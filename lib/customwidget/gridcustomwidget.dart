import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class gridcustomwid extends StatelessWidget {
  // const gridcustomwid({super.key});
  final Image lead;
  final Text titl;
  final Text subtitl;
  final Icon trailng;
  final Color colr;
  final VoidCallback onpress;
  gridcustomwid({  required this.lead, required this.titl, required this.subtitl, required this.trailng, required this.colr, required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
          child: ListTile(

            leading: lead,
            title: titl,
            subtitle: subtitl,
            trailing: trailng,
            iconColor: colr,
            onTap: onpress,
          ),
        ),
    );
  }
}
