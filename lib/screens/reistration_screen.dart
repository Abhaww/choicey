import 'package:choicey/components/reusable_button.dart';
import 'package:choicey/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:choicey/components/reusable_text_field.dart';
import 'package:flutter/material.dart';
import 'package:choicey/themes/colors.dart';
import 'package:choicey/themes/text_style.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'login_screen.dart';

class RegistrationScreen extends StatefulWidget {
  static String path = 'route';
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController _usernameEditingController = TextEditingController();
  TextEditingController _emailEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120,
                child: Image(
                  image: AssetImage('assets/images/choicey_logo.jpeg'),
                ),
              ),
              Text('REGISTER NOW', style: kTextStyle1,),
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
                        height: 400.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: kCardBackgroundColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: 70.0,
                              ),
                              ReusableTextField(
                                shadow: false,
                                color: kMainColor,
                                onChanged: (value){
                                  setState(() {
                                    print(value);
                                  });
                                },
                                textEditingController: _usernameEditingController,
                                icon: Icon(FontAwesomeIcons.user, size: 20.0, color: kButtonColor,),
                                hint: 'Enter username',
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              ReusableTextField(
                                shadow: false,
                                color: kMainColor,
                                onChanged: (value){
                                  setState(() {
                                    print(value);
                                  });
                                },
                                textEditingController: _emailEditingController,
                                keyBoardType: TextInputType.emailAddress,
                                icon: Icon(Icons.email, size: 20.0, color: kButtonColor,),
                                hint: 'Enter email address',
                              ),
                            ],
                          ),
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
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: ReusableButton(
                    buttonText: 'Register',
                    buttonAction: () {
                      print('register');
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),),);
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Already have an account?', style: kTextStyle1,),
                    SizedBox(
                      width: 3.0,
                    ),
                    InkWell(
                      onTap: (){
                        print('Login');
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),),);
                      },
                      child: Text('Login', style: TextStyle(
                        color: kButtonColor,
                        fontSize: 20.0,
                        fontFamily: 'Montserrat',
                      ),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0,)
            ],
          ),
        ),
      ),
    );
  }
}
