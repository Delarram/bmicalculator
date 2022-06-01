import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reuseable_container.dart';
import 'constant.dart' as constant;
import 'rounded_button.dart';
import 'result_page.dart';
import 'bottom_file.dart';
import 'bmi_calculation.dart';



 enum Gender{
   male,
   female
 }
class InputPage extends StatefulWidget {
  const InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

   Gender gender;
   double height=6.5;
   int weight=121;
   int age = 20;
  int maleColor= constant.inactiveColor;
  int femaleColor=constant.inactiveColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(title: Text('Calculator App',
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
           backgroundColor: Color(0xff090E21),
      centerTitle: true),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                    gender = Gender.male;
                    });

                  },
                  child: ReuseableContainer(
                    color: gender==Gender.male? Color(constant.activeColor):Color(constant.inactiveColor),
                  cardChild: Center(
                    child: IconContent(
                      label: "press=>",

                    ),
                  ),
                  ),
                ),
              ),
              
              Expanded(
                child: GestureDetector(
                  onTap: (){

                    setState(() {
                      gender= Gender.female;
                    });
                  },
                  child: ReuseableContainer(
                    color: gender== Gender.female ? Color(constant.activeColor): Color(constant.inactiveColor),
                  cardChild:IconContent(
                    label: "PUNU",
                    icon: FontAwesomeIcons.venus,
                  )
                    ,),
                ),
              ),
            ],
            ),
          Expanded(child: ReuseableContainer(

            color: Color(constant.activeColor),
            cardChild: Column(

                children: [
                  Text("Punu Height",style: constant.klableStyle),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.baseline,
                     textBaseline:TextBaseline.alphabetic,
                     children: [
                       Text(double.parse(height.toStringAsFixed(1)).toString(),style: constant.numberStyle,),
                       Text("feet",style: constant.numberStyle,)
                     ],
                   ),
                  Slider(
                    activeColor: Color(constant.bottomColor),
                    inactiveColor: Colors.white,
                    value: height,
                    max: 7.0,
                    min: 4.0,
                    onChanged: (double v){

                      setState(() {
                        height =v;
                      });
                    },

                  )
                ],
            ),
          )),

          Expanded(child: Row(
            children: [
              Expanded(child: ReuseableContainer(color: Color(constant.activeColor),
                cardChild: (
                   Column(

                    children: [
                      Text("Tim ro Weight",
                          style: constant.klableStyle),

                      Text(weight.toString(),
                      style: constant.numberStyle,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundedButton(
                              icon: Icons.add,
                            onPress: (){
                               setState(() {
                                 weight++;
                               });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RoundedButton(
                            icon: Icons.remove,
                            onPress: (){
                             setState(() {
                               weight--;
                             });
                            },
                          )
                        ],
                      )

                    ],
                  )
                ),
              ),),
              Expanded(child: ReuseableContainer(color: Color(constant.activeColor),
              cardChild: Expanded(
                child: Column(

                  children: [
                    Text("tim ro age",
                        style: constant.klableStyle),

                    Text(age.toString(),
                      style: constant.numberStyle,),

                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundedButton(
                            icon: Icons.add,
                            onPress: (){
                              setState(() {
                                age++;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RoundedButton(
                            icon: Icons.remove,
                            onPress: (){
                              setState(() {
                                age--;
                              });
                            },
                          )
                        ],
                      ),
                    )

                  ],
                ),
              ),
              ),)
            ],
          )),
          bottom_Buttom(onPress: (){

            BMICalculation Calculation = BMICalculation(height: height,weight: weight);


          Navigator.push(context, MaterialPageRoute(builder: (context)=>Resultpage(
            bmi: Calculation.getBMI(),
            result: Calculation.getResult(),
            advice: Calculation.getAdvice(),


          )));
          },
          bottomlable: "Calculate",)
        ],
      ),


    );
  }
}










