import 'package:flutter/material.dart';
import 'Constaint.dart';
class BottomButton extends StatelessWidget {
  BottomButton( { required this.ButtonTittle } );

  final String ButtonTittle;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Center(
        child: Text(
          ButtonTittle,style:kLargenumberstyle,
        ),
      ),
      height: KBottomcontainerheight,
      width: double.infinity,
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.only(bottom: 20.0),
      color: kBottomcontainercolor,
    );
  }
}