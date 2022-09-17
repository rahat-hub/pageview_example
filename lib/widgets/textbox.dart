import 'package:flutter/material.dart';

class TextBoxConstant{
  static Widget textWidget({text,textColor = Colors.black,textSize = 14.0,fontWeight = FontWeight.w500}){
    return Text(text,style: TextStyle(fontWeight: fontWeight,fontSize: textSize,color: textColor),);
  }
}