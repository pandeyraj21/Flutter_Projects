import 'package:bmi_calculator/bottom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Constaint.dart';
import 'package:bmi_calculator/resuble.dart';
import 'calculator_brain.dart';

class ResultsPage extends StatelessWidget {
   ResultsPage({required this.bmiResult,required this.resultText,required this.interpretation});
  final String bmiResult;
  final  String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('BMI CALCULATOR'),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child:Container(
                padding: EdgeInsets.all(15.0),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Your Result',
                    style: kTitleTextStyle,
                  ),

              ),
          ),
          Expanded(
              flex: 7,
              child:Reuseble(
                colour: KActivecart_colour,
                cardChild:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(resultText.toUpperCase(),
                    style:kresultTextStyle,),
                    Text(bmiResult,
                    style:kBmiTextStyle ,
                    ),
                    Text(interpretation,
                    textAlign: TextAlign.center,
                    style: KBodyTextStyle,
                    ),


                  ],



                ) ,
              ),
          ),
          Expanded(
            child: InkWell(
              onTap:(){
                Get.back();
              },
              child: BottomButton(
                ButtonTittle: 'RE-CALCULATOR',


              ),
            ),
          ),

        ],

      ),
    );

  }
}
