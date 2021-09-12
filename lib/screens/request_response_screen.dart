import 'package:choicey/custom_widget/date_widget.dart';
import 'package:choicey/screens/response_lists.dart';
import 'package:choicey/themes/colors.dart';
import 'package:choicey/themes/styles.dart';
import 'package:choicey/themes/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RequestResponse extends StatefulWidget {
  static String path = 'route';
  const RequestResponse({Key? key}) : super(key: key);

  @override
  _RequestResponseState createState() => _RequestResponseState();
}

class _RequestResponseState extends State<RequestResponse> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: ListView(
          children: [
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Requests', style: kTextStyle2,),
              ],
            ),
            SizedBox(height: 30.0,),
            ReusableRequests(),
            SizedBox(height: 20.0,),
            ReusableRequests(),
            SizedBox(height: 20.0,),
            ReusableRequests(),
            SizedBox(height: 20.0,),
            ReusableRequests(),
            SizedBox(height: 20.0,),
          ],
      ),
    );
  }
}

class ReusableRequests extends StatelessWidget {
  const ReusableRequests({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ResponseListScreen(),),);
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          // color: kCardBackgroundColor,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DateWidget(
                  date: '12/7/2021',
                ),
                SizedBox(width: 10.0,),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: kBoxDecoration1,
                    child: Column(
                      children: [
                        Text('Fix Door', style: kTextStyle1,),
                        SizedBox(width: 200.0,child: Divider(color: kSubTextColor,),),
                        Text('Can someone help', style: kTextStyle1,),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10.0,),
                Container(
                  height: 50.0,
                  width: 50.0,
                  child: Center(child: Text('8', style: kTextStyle1,),),
                  decoration: kBoxDecoration,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100.0, right: 10.0, top: 10.0),
              child: SizedBox(
                width: double.infinity,
                child: Divider(
                  thickness: 2.0,
                  color: kCardBackgroundColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

