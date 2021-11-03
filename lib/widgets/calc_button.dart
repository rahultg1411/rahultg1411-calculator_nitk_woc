import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
  //const CalculatorButton({Key? key}) : super(key: key);
  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;
  final Function callback;

  const CalculatorButton({
    required this.text,
    required this.fillColor,
    required this.textColor,
    required this.textSize,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(7.0),
      child: SizedBox(
        width: 70,
        height: 60,
        child: TextButton(
          style: TextButton.styleFrom(
            primary: Color(textColor),
            backgroundColor: Color(fillColor),
          ),
          child: Text(
            text,
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                fontSize: textSize,
              ),
            ),
          ),
          onPressed: () => {callback(text)},
        ),
      ),
    );
  }
}
