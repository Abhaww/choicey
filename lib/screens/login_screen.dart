import 'package:choicey/components/reusable_button.dart';
import 'package:choicey/components/reusable_text_field.dart';
import 'package:choicey/screens/reistration_screen.dart';
import 'package:flutter/material.dart';
import 'package:choicey/themes/colors.dart';
import 'package:choicey/themes/text_style.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  static String path = 'route';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailTextEditingController = TextEditingController();
  TextEditingController _passwordTextEditingController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                  child: Image(
                    image: AssetImage('assets/images/choicey_logo.jpeg'),
                  ),
                ),
                Text(
                  'LOGIN TO YOUR ACCOUNT',
                  style: kTextStyle1,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Stack(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: ClipPath(
                        clipper: RoundedDiagonalPathClipper(),
                        child: Container(
                          padding: EdgeInsets.all(16.0),
                          height: 400.0,
                          decoration: BoxDecoration(
                            color: kCardBackgroundColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: 60.0,
                              ),
                              ReusableTextField(
                                shadow: false,
                                color: kMainColor,
                                onChanged: (value) {
                                  setState(() {
                                    print(value);
                                  });
                                },
                                textEditingController: _emailTextEditingController,
                                keyBoardType: TextInputType.emailAddress,
                                icon: Icon(
                                  Icons.email,
                                  size: 20.0,
                                  color: kButtonColor,
                                ),
                                hint: 'Enter your email or username',
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              ReusableTextField(
                                shadow: false,
                                color: kMainColor,
                                onChanged: (value) {
                                  setState(() {
                                    print(value);
                                  });
                                },
                                textEditingController:
                                _passwordTextEditingController,
                                keyBoardType: TextInputType.visiblePassword,
                                securePassword: true,
                                icon: Icon(
                                  Icons.lock,
                                  size: 20.0,
                                  color: kButtonColor,
                                ),
                                hint: 'Enter your password',
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(right: 16.0),
                                    child: GestureDetector(
                                      child: Text(
                                        'forgot password?',
                                        style: kTextStyle1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 40.0,
                          backgroundColor: kButtonColor,
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                      child: ReusableButton(
                        buttonText: 'Login',
                        buttonAction: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Don\'t have an account?',
                        style: kTextStyle1,
                      ),
                      SizedBox(
                        width: 3.0,
                      ),
                      InkWell(
                        onTap: () {
                          print('register');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegistrationScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                            color: kButtonColor,
                            fontSize: 20.0,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0,)
              ],
            ),
          ],
        )
      ),
    );
  }
}
