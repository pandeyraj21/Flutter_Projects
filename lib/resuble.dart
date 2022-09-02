import 'package:flutter/material.dart';

class Reuseble extends StatelessWidget {
  Reuseble({ required this.colour,  this.cardChild });
  final Color colour;
  Widget? cardChild =Container() ;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin:EdgeInsets.all(15.0) ,
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}