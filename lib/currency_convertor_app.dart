import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConvertMaterialPage extends StatefulWidget {
  const CurrencyConvertMaterialPage({Key? key}) : super(key: key);

  @override
  State createState() => _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConvertMaterialPage> {
  TextEditingController textEditingController = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    // Define the border for the text field
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.red,
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(60)),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Currency Converter'),
        actions: [Icon(Icons.done_all)],
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: ColoredBox(
          color: const Color.fromRGBO(255, 0, 0, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'INR $result',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: textEditingController,
                  keyboardType: TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: 'Please enter the amount in USD',
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    prefixIcon:
                    Icon(Icons.monetization_on, color: Colors.black),
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = double.parse(textEditingController.text) * 81;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(78)),
                    ),
                  ),
                  child: Text('Convert'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CurrencyConvertMaterialPage(),
  ));
}
