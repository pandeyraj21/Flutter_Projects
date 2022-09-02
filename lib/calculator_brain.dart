import 'dart:math';

import 'package:get/get.dart';

class CalculatorBrain{
  late double?  bmi = 0.0;
  final int weight;
  final int height;
  CalculatorBrain( {required this.weight,required this.height});


  String calculateBMI() {
    bmi = weight*10000/(height*height);
    return bmi!.toPrecision(2).toString();

  }

  String getResult(){
           if(bmi!>=25){
             return 'OverWeight';
           }else if(bmi!>18.5){
             return 'Normal';
           }else{
             return 'Underweight';
           }
  }

  String getInterpretation(){
    if(bmi!>=25){
      return 'Your BMI result is quite high,you should exercise  more!,';
    }else if(bmi!>18.5){
      return 'You have good bmi Score !good job';
    }else{
      return 'Your BMI result is quite low,you should eat more!,';
    }


  }

}