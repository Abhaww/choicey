import 'package:choicey/themes/text_style.dart';
import 'package:flutter/material.dart';
import 'package:choicey/themes/colors.dart';

class DateWidget extends StatelessWidget {
  final String? date;
  DateWidget({this.date});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
        color: kButtonColor,
      ),
      child: Text(date!, style: kTextStyle1,),
    );
  }
}