import 'package:flutter/material.dart';

const colorRed = Color.fromRGBO(231, 28, 36, 1);
const colorGreen = Color.fromRGBO(33, 191, 115, 1);
const colorWhite = Color.fromRGBO(255, 255, 255, 1);
const colorDarkBlue = Color.fromRGBO(44, 62, 80, 1);

InputDecoration AppInputDecoration(String label,
    {Color borderColor = Colors.white,
    Color focusedBorderColor = Colors.green}) {
  return InputDecoration(
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: focusedBorderColor, width: 1),
    ),
    fillColor: Colors.white,
    filled: true,
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: borderColor, width: 1),
    ),
    border: OutlineInputBorder(),
    labelText: label,
  );
}

DecoratedBox AppDropDownStyle(child) {
  return DecoratedBox(
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(
        color: Colors.white,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(4),
    ),
    child: Padding(
      padding: EdgeInsets.only(left: 30, right: 30),
      child: child,
    ),
  );
}

ButtonStyle AppButtonStyle() {
  return ElevatedButton.styleFrom(
    elevation: 1,
    padding: EdgeInsets.all(0),
    backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
  );
}

Ink SuccessButtonStyle(ButtonText) {
  return Ink(
    decoration: BoxDecoration(
      color: Colors.blue,
     borderRadius: BorderRadius.circular(6),
    ),
    child: Container(
      height: 45,
      alignment: Alignment.center,
      child:Text(ButtonText,
      style:TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ) ,)
    ),
  );

}
