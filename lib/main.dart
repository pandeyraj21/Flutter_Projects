import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'input_page.dart';

void main() {
  runApp(BMIcalculator());

}
class BMIcalculator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: Inputpage(),
    );
  }
}



