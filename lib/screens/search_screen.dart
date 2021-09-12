import 'package:flutter/material.dart';
import 'package:choicey/components/reusable_text_field.dart';
import 'package:choicey/themes/text_style.dart';
import 'package:choicey/themes/colors.dart';

class SearchScreen extends StatefulWidget {
  static String path = 'route';
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String? serviceEntered;
  String? locationEntered;
  TextEditingController _textEditingControllerForService =
      TextEditingController();
  TextEditingController _textEditingControllerForLocation =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          SizedBox(
            height: 40.0,
          ),
          Text(
            'FIND A BUSINESS',
            style: kTextStyle2,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Search our Listings for someone who will travel to you',
            textAlign: TextAlign.center,
            softWrap: true,
            style: kTextStyle1,
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: kShadowColor, offset: Offset(3, 6), blurRadius: 3.0),
                BoxShadow(
                    color: kShadowColor, offset: Offset(-3, -3), blurRadius: 3.0),
              ],
              color: kMainColor,
              borderRadius: BorderRadius.circular(18.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'I am looking for....',
                  style: kTextStyle1,
                ),
                SizedBox(
                  height: 10.0,
                ),
                ReusableTextField(
                  color: kCardBackgroundColor,
                  hint: 'Enter trade, service or company',
                  onChanged: (value) {
                    setState(() {
                      serviceEntered = value;
                    });
                  },
                  textEditingController: _textEditingControllerForService,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'To come to....',
                  style: kTextStyle1,
                ),
                SizedBox(
                  height: 10.0,
                ),
                ReusableTextField(
                  color: kCardBackgroundColor,
                  hint: 'Enter city, town or postcode',
                  onChanged: (value) {
                    setState(() {
                      locationEntered = value;
                    });
                  },
                  textEditingController: _textEditingControllerForLocation,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 80.0,
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () {
                            print(serviceEntered);
                            print(locationEntered);
                          },
                          child: Text('Go', style: kButtonTextStyle,),
                          style: ElevatedButton.styleFrom(
                            primary: kButtonColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
