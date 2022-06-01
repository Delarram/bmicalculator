import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {

  RoundedButton({this.icon,this.onPress});
  final IconData icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      width: 56.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          color: Color(0xff4f4f5e)
      ),
      child: IconButton(
        onPressed: onPress,
        icon: Icon(icon),
        color: Colors.white,
        iconSize: 30,
      ),
    );
  }
}