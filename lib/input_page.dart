import 'package:bmi_calculator/input_page.dart';
import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'icon_content.dart';
import 'package:bmi_calculator/resuble.dart';
import 'Constaint.dart';
import 'bottom_button.dart';
import 'calculator_brain.dart';


enum Gender{
  Male,
  Female,
}

class Inputpage extends StatefulWidget {
  @override
  State<Inputpage> createState() => _InputpageState();
}
class _InputpageState extends State<Inputpage> {
   Gender? selectGender=null;
  int height=180;
  int weight=60;
  int age=19;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(
          'BMI CALCULATOR',
        ) ,
        backgroundColor: Color(0xFF111328),
      ),
      body: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child:Row(
              children: [
                Expanded(
                  child:GestureDetector(
                    onTap: (){
                      setState((){
                      selectGender= Gender.Male;
                      });
                    },
                  child: Reuseble(
                      colour : selectGender==Gender.Male ? KActivecart_colour:KInactivecolor,
                    cardChild:IconContent(
                      icon: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                  ),
                  ),
                ),
                Expanded(
                child:GestureDetector(
                  onTap: (){
                    setState((){
                      selectGender=Gender.Female;
                    });
                  },
                  child:  Reuseble(
                      colour: selectGender==Gender.Female?KActivecart_colour:KInactivecolor,
                    cardChild: IconContent(
                        icon:
                          FontAwesomeIcons.venus,
                         text: 'FEMALE',
                    ),
                  ),
                ),
                ),
              ],
            ),
            ),
            Expanded(
              child: Reuseble(
                  colour: KActivecart_colour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Text('HEIGHT',
                    style: labelTextstyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                         Text(height.toString(),
                           style: numberTextstyle,
                             ),
                        Text('cm'),
                      ],
                    ),
                    
                    SliderTheme(
                      data:SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xFF8D8E98),
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xFFEB1555),
                        overlayColor:Color(0x29EB1555) ,
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape: RoundSliderOverlayShape(overlayRadius:30.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                  min: 120.0,
                  max: 220.0,
                  onChanged:(double newValue){
                    setState((){
                      height=newValue.round();
                    }
                    );
                  }
              ),
                    ),

                  ],
                ),
              ),
            ),
            Expanded(
              child:Row(
                children: [
                  Expanded(
                    child:  Reuseble(
                      colour: KActivecart_colour,
                     cardChild: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text('WEIGHT',
                         style:labelTextstyle,),
                         Text(weight.toString(),
                           style: numberTextstyle,
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,

                           children: [
                             GestureDetector(
                               onTap:(){
                                 setState((){
                                   weight=weight-1;
                                 }
                                 );
                               },
                              child: Container(
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.all(Radius.circular(20)),
                                   color: Colors.grey,
                                 ),
                                 padding: EdgeInsets.all(10),
                                 child: Icon(
                                   Icons.remove,
                                   size: 20,
                                 ),

                               ),

                             ),

                             SizedBox(
                               width: 10,
                             ),
                             GestureDetector(
                               onTap: (){
                                 setState((){
                                   weight=weight+1;
                                 },
                                 );
                               },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  color: Colors.grey,
                                ),
                                padding: EdgeInsets.all(10),
                                child: Icon(
                                  Icons.add,
                                  size: 20,
                                ),
                              ),
                             ),
                           ],
                         ),

                       ],
                    ),
                    ),
                  ),
                  Expanded(
                    child:  Reuseble(colour: KActivecart_colour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE',
                        style: labelTextstyle,),
                        Text(age.toString(),
                        style: numberTextstyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap:(){
                                setState((){
                                  age=age-1;
                                },

                                );
                              },
                              child:Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  color: Colors.grey,
                                ),
                                padding: EdgeInsets.all(10),
                                child: Icon(
                                  Icons.remove,
                                  size: 20,

                                ),
                              ) ,
                            ),

                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                                 onTap:(){
                                   setState((){
                                      age=age+1;
                                   },);
                                 },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  color: Colors.grey,
                                ),
                                padding: EdgeInsets.all(10),
                                child: Icon(
                                  Icons.add,
                                  size: 20,
                                ),
                              ) ,
                            ),
                          ],
                        ),
                      ],

                    ),
                    ),
                  ),
                ],

              ),
            ),

           GestureDetector(


             child: BottomButton(
                ButtonTittle: 'CALCULATOR',

              ),
             onTap:(){
               setState((){
                 CalculatorBrain calc = CalculatorBrain(weight:weight,height:height);
                 Get.to(()=>ResultsPage(
                   bmiResult:calc.calculateBMI(),
                   resultText: calc.getResult(),
                   interpretation: calc.getInterpretation(),

                 ));
               },

               );

             },
           ),
          ],
      ),
    );
  }
}







