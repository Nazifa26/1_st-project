import 'package:flutter/material.dart';
import 'package:myapp/Screen/ProductCreateScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter CURD App',
      home: Productcreatescreen(),
    );
  }
}
