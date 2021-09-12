import 'package:flutter/material.dart';
import 'package:choicey/themes/text_style.dart';
import 'package:choicey/themes/colors.dart';

class ReusableButton extends StatelessWidget {
  ReusableButton({this.buttonText, this.buttonAction, });
  final String? buttonText;
  final buttonAction;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: kShadowColor, offset: Offset(3, 6), blurRadius: 3.0),
          BoxShadow(
              color: kShadowColor, offset: Offset(-3, -3), blurRadius: 3.0),
        ],
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: ElevatedButton(
        onPressed: buttonAction,
        child: Text(
          buttonText!,
          style: kButtonTextStyle,
        ),
        style: ElevatedButton.styleFrom(
          primary: kMainColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
      ),
    );
  }
}
