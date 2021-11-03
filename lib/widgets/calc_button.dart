import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  //const CalculatorButton({Key? key}) : super(key: key);
  final String text;

  const CalculatorButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(7.0),
      child: SizedBox(
        width: 70,
        height: 60,
        child: TextButton(
          style: TextButton.styleFrom(
            primary: Colors.purple,
            backgroundColor: Colors.amber,
          ),
          child: Text(
            text,
          ),
          onPressed: () => {},
        ),
      ),
    );
  }
}
