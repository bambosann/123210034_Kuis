import 'package:flutter/material.dart';
import 'package:kuiss/listgroceries.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KUIS TPM IF-E',
      home: ListGroceries(),
    );
  }
}
