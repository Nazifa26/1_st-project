import 'package:flutter/material.dart';

InputDecoration AppInputDecoration() {
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(25, 15, 15, 5),
    border: OutlineInputBorder(),
    hintText: "+1234",
  );
}

InputDecoration AppInputDecoration2() {
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
    border: OutlineInputBorder(),
    prefixIcon: Icon(Icons.phone),
    hintText: "Phone",
  );
}

ButtonStyle AppButtonStyle() {
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(20),
    backgroundColor: Colors.blue,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(4)),
    ),
  );
}
