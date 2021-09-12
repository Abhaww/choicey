import 'package:choicey/models/send_enquiry_model.dart';
import 'package:choicey/themes/colors.dart';
import 'package:choicey/themes/text_style.dart';
import 'package:flutter/material.dart';

/// This is the default Text box for forms in this app(Choicey)
class ReusableTextField extends StatelessWidget {
  final String? hint;
  final onChanged;
  final TextEditingController? textEditingController;
  final Icon? icon;
  final TextInputType? keyBoardType;
  final Color color;
  final bool shadow;
  final bool securePassword;
  const ReusableTextField({
    this.securePassword = false,
    required this.hint,
    required this.onChanged,
    required this.textEditingController,
    this.icon,
    this.keyBoardType,
    required this.color,
    this.shadow = true,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 10.0),
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 24.0),
      decoration: BoxDecoration(
        boxShadow: [
          shadow == true
              ? BoxShadow(
                  color: kShadowColor,
                  offset: Offset(3, 6),
                  blurRadius: 3.0,
                )
              : BoxShadow(
                  color: kMainColor,
                  offset: Offset(0, 0),
                ),
        ],
        borderRadius: BorderRadius.circular(30.0),
        color: color,
      ),
      child: TextField(
        keyboardType: keyBoardType != null ? keyBoardType : TextInputType.text,
        controller: textEditingController,
        cursorColor: kButtonColor,
        onChanged: onChanged,
        cursorHeight: 30,
        cursorWidth: 3.0,
        style: kTextStyle1,
        obscureText: securePassword,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: kTextStyle1,
          border: InputBorder.none,
          // ignore: unnecessary_null_comparison
          icon: icon != null ? icon : null,
        ),
      ),
    );
  }
}
// ignore: non_constant_identifier_names
