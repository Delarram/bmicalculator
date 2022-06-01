import 'package:calculator/reuseable_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constant.dart' as constant;
import 'bottom_file.dart';



class Resultpage extends StatelessWidget {


     String result;
     String bmi;
     String advice;

     Resultpage({@required this.result,@required this.bmi,@required this.advice});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0A0B20),
      appBar: AppBar(title: Text('BMI Calculator'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 2,
              child: Text(
                "Your Result",
                textAlign: TextAlign.center,
                style: constant.kresultpage,
              ),
            ),
            Expanded(

              flex: 6,
              child: ReuseableContainer(
                color: Color(0xff1C1D31),
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    Text(result, style: constant.jresultpage),
                    Text(bmi,style: constant.Rnumber),
                    Text(advice,
                    textAlign: TextAlign.center,
                    style: constant.BodyText),
                  ],
                ),
              ),
            ),
            Expanded(
              child: bottom_Buttom(bottomlable:'Re-Calculate',
                onPress: (){
                Navigator.pop(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
