import 'package:flutter/material.dart';

class CustomDropDownMenu extends StatelessWidget {
  final String? dropdownValue;
  final List<DropdownMenuItem>? dropdownMenuItem;
  final onChanged;
  const CustomDropDownMenu({this.dropdownMenuItem, this.dropdownValue, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      color: Colors.white,
      width: double.infinity,
      child: DropdownButton(
        isExpanded: true,
        value: dropdownValue,
        items: dropdownMenuItem,
        onChanged: onChanged,
      ),
    );
  }
}
