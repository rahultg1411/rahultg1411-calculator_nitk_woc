import 'package:calculator_nitk_woc/widgets/calc_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
        ),
        backgroundColor: Colors.blueGrey,
        body: Container(
          margin: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '8',
                  ),
                  CalculatorButton(
                    text: '8',
                  ),
                  CalculatorButton(
                    text: '8',
                  ),
                  CalculatorButton(
                    text: '8',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '8',
                  ),
                  CalculatorButton(
                    text: '8',
                  ),
                  CalculatorButton(
                    text: '8',
                  ),
                  CalculatorButton(
                    text: '8',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '8',
                  ),
                  CalculatorButton(
                    text: '8',
                  ),
                  CalculatorButton(
                    text: '8',
                  ),
                  CalculatorButton(
                    text: '8',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '8',
                  ),
                  CalculatorButton(
                    text: '8',
                  ),
                  CalculatorButton(
                    text: '8',
                  ),
                  CalculatorButton(
                    text: '8',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
