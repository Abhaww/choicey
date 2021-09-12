import 'package:choicey/components/custom_dropdown_menu.dart';
import 'package:choicey/themes/colors.dart';
import 'package:choicey/themes/text_style.dart';
import 'package:flutter/material.dart';
import 'package:choicey/components/reusable_text_field.dart';

class SendRequest extends StatefulWidget {
  static String path = 'route';
  const SendRequest({Key? key}) : super(key: key);

  @override
  _SendRequestState createState() => _SendRequestState();
}

class _SendRequestState extends State<SendRequest> {
  String? requestDetails;
  String dropdownValue = 'Publish';
  String? address;
  TextEditingController _textEditingControllerRequestDetails =
      TextEditingController();
  TextEditingController _textEditingControllerAddress = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 30.0,),
            Text('SEND REQUEST', style: kTextStyle2,),
            Text('What do you need?', style: kTextStyle1,),
            Container(
              padding: EdgeInsets.all(15.0),
              margin: EdgeInsets.all(10.0),
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: kShadowColor, offset: Offset(3, 6), blurRadius: 3.0,),
                  BoxShadow(
                    color: kShadowColor,
                    offset: Offset(-3, -3),
                    blurRadius: 3.0,
                  ),
                ],
                color: kMainColor,
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Go into details about your requirements',
                    style: kTextStyle1,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ReusableTextField(
                    color: kCardBackgroundColor,
                    hint: 'What do you need?',
                    onChanged: (value) {
                      setState(() {
                        requestDetails = value;
                      });
                    },
                    textEditingController: _textEditingControllerRequestDetails,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Select tags associated with this type of work.',
                    style: kTextStyle1,
                  ),
                  // SizedBox(
                  //   height: 10.0,
                  // ),
                  CustomDropDownMenu(
                    dropdownValue: 'Publish',
                    dropdownMenuItem: <DropdownMenuItem>[
                      DropdownMenuItem(
                        value: 'Publish',
                        child: Text('Publish'),
                      ),
                      DropdownMenuItem(
                        value: 'Pending for Review',
                        child: Text('Pending for Review'),
                      ),
                      DropdownMenuItem(
                        value: 'Draft',
                        child: Text('Draft'),
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        dropdownValue = value;
                      });
                    },
                  ),
                  SizedBox(height: 10.0,),
                  Text(
                    'Enter town, city and postcode',
                    style: kTextStyle1,
                  ),
                  SizedBox(height: 10.0,),
                  ReusableTextField(
                    color: kCardBackgroundColor,
                    hint: 'Address',
                    onChanged: (value) {
                      setState(() {
                        address = value;
                      });
                    },
                    textEditingController: _textEditingControllerAddress,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 160.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Center(
                            child: Text(
                              'Send Request',
                              style: kButtonTextStyle,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: kButtonColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}
