import 'package:currency_convertor_app/currency_convertor_app.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());//requires widgets pramaters



}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    //return something
    return MaterialApp(
    home:CurrencyConverterMaterialPage(),
    );
  }
  }





