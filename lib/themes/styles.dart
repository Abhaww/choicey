import 'package:flutter/material.dart';
import 'colors.dart';

final BoxDecoration kBoxDecoration = BoxDecoration(
  color: kButtonColor,
  borderRadius: BorderRadius.circular(100.0),
);
final BoxDecoration kBoxDecoration1 = BoxDecoration(
    borderRadius: BorderRadius.circular(18.0),
    color: kMainColor,
    boxShadow: [
      BoxShadow(
        color: kShadowColor,
        offset: Offset(3.0, 6.0),
        blurRadius: 3.0,
      ),
    ]
);