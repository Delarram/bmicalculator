import 'package:flutter/material.dart';
import 'constant.dart'as constant;


class bottom_Buttom extends StatelessWidget {
  final String bottomlable;
  final Function onPress;
  bottom_Buttom({this.bottomlable,this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:10.0),
      height: constant.bottomHeight,
      width: double.infinity,
      color: Color(constant.bottomColor),
      child: TextButton(
        child: Text(bottomlable,style: constant.klableStyle,),
        onPressed: onPress,
      ),

    );
  }
}