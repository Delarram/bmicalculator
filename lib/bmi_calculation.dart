import 'dart:math';


class BMICalculation{
  final double height;
  final int weight;
  double _bmi;

  BMICalculation({this.weight,this.height});


  String getBMI(){

    _bmi= weight/pow((height*12), 2)*703;

    return _bmi.toStringAsFixed(2);
  }


  String getResult(){
    if(_bmi>=25){
      return 'Over Weight';
    }else if(_bmi>18.5){
      return 'Normal';
    }else {
      return 'Under weight';
    }
  }

  String getAdvice(){
    if(_bmi>=25){
      return 'You need to do little exercise my punu';
    }else if(_bmi>18.5){
      return 'My punu body weight is normal,good job!';
    }else {
      return 'Your body weight is under weight,eat more meri punu';
    }
  }








}
