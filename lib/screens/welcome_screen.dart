import 'package:choicey/components/reusable_button.dart';
import 'package:choicey/screens/reistration_screen.dart';
import 'package:flutter/material.dart';
import 'package:choicey/themes/colors.dart';
import 'package:choicey/themes/text_style.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home_screen.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static String path = 'Welcome Screen';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonColor,
      body: Container(
        // color: kMainColor,
        padding: EdgeInsets.all(10.0),
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/choicey_logo.jpeg'),
              height: 200.0,
              width: 200.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text('Welcome to Choicey. The place where you can find your desired service instantly',
              style: kTextStyle1,
              textAlign: TextAlign.center,
              softWrap: true,
            ),
            SizedBox(
              height: 10.0,
            ),
            ReusableButton(
              buttonText: 'Login',
              buttonAction: (){
                Navigator.pushNamed(context, LoginScreen.path);
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            ReusableButton(
              buttonText: 'Register',
              buttonAction: (){
                Navigator.pushNamed(context, RegistrationScreen.path);
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            ReusableButton(
              buttonText: 'Register your Business',
              buttonAction: (){
              },
            ),
            SizedBox(height: 10.0,),
            // Text('Continue without signup (You cannot send message, leave reviews or send requests without registering)',
            //   softWrap: true,
            //   style: kTextStyle1,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Skip', style: kTextStyle1),
                SizedBox(width: 5.0),
                IconButton(
                onPressed: (){
                  Navigator.pushNamed(context, Home.path);
                },
                icon: Icon(
                  FontAwesomeIcons.chevronRight,
                  color: kMainColor,
                  size: 20.0,
                ),
              ),
    ],
            ),
          ],
        ),
      ),
    );
  }
}
