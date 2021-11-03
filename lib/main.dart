import 'package:calculator_nitk_woc/widgets/calc_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  late int firstNum;
  late int secondNum;
  String history = '';
  String textToDisplay = '';
  late String res;
  late String operation;

  void buttonOnClick(String btnVal) {
    print(btnVal);
    if (btnVal == 'C') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
    } else if (btnVal == 'AC') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
      history = ' ';
    } else if (btnVal == '+/-') {
      if (textToDisplay[0] != '-')
        res = '-' + textToDisplay;
      else
        res = textToDisplay.substring(1);
    } else if (btnVal == '<') {
      res = textToDisplay.substring(0, textToDisplay.length - 1);
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'X' ||
        btnVal == '/') {
      firstNum = int.parse(textToDisplay);
      res = '';
      operation = btnVal;
    } else if (btnVal == '=') {
      secondNum = int.parse(textToDisplay);
      if (operation == '+') {
        res = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '-') {
        res = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == 'X') {
        res = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '/') {
        res = (firstNum / secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnVal).toString();
    }

    setState(() {
      textToDisplay = res;
    });
  }

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
              Container(
                child: Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Text(
                    history,
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 25,
                        color: Colors.white30,
                      ),
                    ),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    textToDisplay,
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: 'AC',
                    fillColor: 0xBE2625F5,
                    textColor: 0xFFBFEB91,
                    textSize: 25,
                    callback: buttonOnClick,
                  ),
                  CalculatorButton(
                    text: 'C',
                    fillColor: 0xBE2625F5,
                    textColor: 0xFFBFEB91,
                    textSize: 25,
                    callback: buttonOnClick,
                  ),
                  CalculatorButton(
                    text: '<',
                    fillColor: 0x49E20E160,
                    textColor: 0xFFBFEB91,
                    textSize: 25,
                    callback: buttonOnClick,
                  ),
                  CalculatorButton(
                    text: '/',
                    fillColor: 0xEE1289F5,
                    textColor: 0xFFBFEB91,
                    textSize: 25,
                    callback: buttonOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '9',
                    fillColor: 0xFF42A5F5,
                    textColor: 0xFFBFEB91,
                    textSize: 20,
                    callback: buttonOnClick,
                  ),
                  CalculatorButton(
                    text: '8',
                    fillColor: 0xFF42A5F5,
                    textColor: 0xFFBFEB91,
                    textSize: 20,
                    callback: buttonOnClick,
                  ),
                  CalculatorButton(
                    text: '7',
                    fillColor: 0xFF42A5F5,
                    textColor: 0xFFBFEB91,
                    textSize: 20,
                    callback: buttonOnClick,
                  ),
                  CalculatorButton(
                    text: 'X',
                    fillColor: 0xEE1289F5,
                    textColor: 0xFFBFEB91,
                    textSize: 20,
                    callback: buttonOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '6',
                    fillColor: 0xFF42A5F5,
                    textColor: 0xFFBFEB91,
                    textSize: 20,
                    callback: buttonOnClick,
                  ),
                  CalculatorButton(
                    text: '5',
                    fillColor: 0xFF42A5F5,
                    textColor: 0xFFBFEB91,
                    textSize: 20,
                    callback: buttonOnClick,
                  ),
                  CalculatorButton(
                    text: '4',
                    fillColor: 0xFF42A5F5,
                    textColor: 0xFFBFEB91,
                    textSize: 20,
                    callback: buttonOnClick,
                  ),
                  CalculatorButton(
                    text: '-',
                    fillColor: 0xEE1289F5,
                    textColor: 0xFFBFEB91,
                    textSize: 20,
                    callback: buttonOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '3',
                    fillColor: 0xFF42A5F5,
                    textColor: 0xFFBFEB91,
                    textSize: 20,
                    callback: buttonOnClick,
                  ),
                  CalculatorButton(
                    text: '2',
                    fillColor: 0xFF42A5F5,
                    textColor: 0xFFBFEB91,
                    textSize: 20,
                    callback: buttonOnClick,
                  ),
                  CalculatorButton(
                    text: '1',
                    fillColor: 0xFF42A5F5,
                    textColor: 0xFFBFEB91,
                    textSize: 20,
                    callback: buttonOnClick,
                  ),
                  CalculatorButton(
                    text: '+',
                    fillColor: 0xEE1289F5,
                    textColor: 0xFFBFEB91,
                    textSize: 20,
                    callback: buttonOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '+/-',
                    fillColor: 0xFF42A5F5,
                    textColor: 0xFFBFEB91,
                    textSize: 20,
                    callback: buttonOnClick,
                  ),
                  CalculatorButton(
                    text: '0',
                    fillColor: 0xFF42A5F5,
                    textColor: 0xFFBFEB91,
                    textSize: 20,
                    callback: buttonOnClick,
                  ),
                  CalculatorButton(
                    text: '00',
                    fillColor: 0xFF42A5F5,
                    textColor: 0xFFBFEB91,
                    textSize: 20,
                    callback: buttonOnClick,
                  ),
                  CalculatorButton(
                    text: '=',
                    fillColor: 0x49E20E160,
                    textColor: 0xFFBFEB91,
                    textSize: 20,
                    callback: buttonOnClick,
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
