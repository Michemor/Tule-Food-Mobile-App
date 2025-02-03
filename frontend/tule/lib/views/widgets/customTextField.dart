
import 'package:flutter/material.dart';
import 'package:tule/configs/colors.dart';

Widget CustomTextField({
  TextEditingController? inputController,
  String? hintText,
}){
  return SizedBox(
    height: 60,
    width: 300,
    child: TextField(
      controller:inputController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: primary1,
          )
        ),
        alignLabelWithHint: true,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: primary1,
          )
        ),
        enabled: true,
        hintText: hintText,
        fillColor: primary3,
        focusColor: neutralGrey,
        hintStyle: TextStyle(
          color: Colors.grey[350],
          fontSize: 13,
          fontWeight: FontWeight.w500
        )
      ),
      cursorColor: primary2,
      style: TextStyle(
        color: neutralGrey,
    
      ),
    )
    );
}