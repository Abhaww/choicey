import 'package:choicey/custom_widget/date_widget.dart';
import 'package:choicey/screens/chat_screen.dart';
import 'package:choicey/themes/text_style.dart';
import 'package:flutter/material.dart';
import 'package:choicey/themes/styles.dart';
import 'package:choicey/themes/colors.dart';


class ResponseListScreen extends StatefulWidget {
  static String path = 'route';
  const ResponseListScreen({Key? key}) : super(key: key);

  @override
  _ResponseListScreenState createState() => _ResponseListScreenState();
}

class _ResponseListScreenState extends State<ResponseListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: kSubTextColor,),
        ),
        title: Container(
          height: 150,
          child: Image.asset('assets/images/choicey_logo.jpeg'),),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: [
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Fix Door', style: kTextStyle2),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            ResponseCard(),
            ResponseCard(),
            ResponseCard(),
            ResponseCard(),
          ],
        ),
      ),
    );
  }
}

class ResponseCard extends StatelessWidget {
  const ResponseCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen(),),);
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: [
            Container(
              height: 60.0,
              width: 60.0,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(3.0, 6.0),
                    color: kShadowColor,
                    blurRadius: 3.0,
                  ),
                ],
                image: DecorationImage(
                  image: AssetImage('assets/images/choicey_logo.jpeg'),
                  fit: BoxFit.fill
                ),
                borderRadius: BorderRadius.circular(100.0),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Container(
              height: 130,
              width: 300,
              padding: EdgeInsets.all(10.0),
              decoration: kBoxDecoration1,
              child: Stack(
                children: [
                  Positioned(
                    top: 10.0,
                      left: 50.0,

                      child: Text('Choicey Inc.', style: kTextStyle1,)
                  ),
                  Positioned(
                    top: 0,
                    left: 230.0,
                    child: Stack(
                      children: [
                        Icon(Icons.star, size: 40.0, color: kButtonColor,),
                        Positioned(
                          top: 10.0,
                          left: 15.0,
                            child: Text('5', style: kButtonTextStyle,),
                        ),
                      ],
                    ),
                    // child: RatingBar.builder(
                    //   wrapAlignment: WrapAlignment.end,
                    //   itemSize: 15.0,
                    //   initialRating: 3,
                    //   minRating: 1,
                    //   direction: Axis.horizontal,
                    //   allowHalfRating: false,
                    //   itemCount: 5,
                    //   itemPadding:
                    //       EdgeInsets.symmetric(horizontal: 4.0),
                    //   itemBuilder: (context, _) => Icon(
                    //     Icons.star,
                    //     color: kButtonColor,
                    //     size: 10.0,
                    //   ),
                    //   onRatingUpdate: (rating) {
                    //     print(rating);
                    //   },
                    // ),
                  ),
                  Positioned(
                    top: 35.0,
                    child: Row(
                      children: [
                        Icon(Icons.message, color: kButtonColor),
                        Text(
                          ' Hii I can help you fix this...',
                          style: kTextStyle1,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 80,
                    child: Row(
                      children: [
                        Icon(Icons.add_location_sharp, color: kButtonColor, size: 20.0,),
                        Text(
                        ' New York',
                        style: kTextStyle1,
                      ),
                    ]
                    ),
                  ),
                  Positioned(
                    bottom: 0.0,
                    top: 65,
                    left: 180.0,
                    child: DateWidget(
                      date: '12/7/2021',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
