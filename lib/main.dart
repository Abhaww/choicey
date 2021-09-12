import 'package:choicey/screens/request_response_screen.dart';
import 'package:choicey/screens/response_lists.dart';
import 'package:choicey/screens/search_screen.dart';
import 'package:choicey/screens/send_request_screen.dart';
import 'package:choicey/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'themes/app_theme.dart';
import 'package:choicey/screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/reistration_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeData,
      initialRoute: WelcomeScreen.path,
      routes: {
        WelcomeScreen.path:  (context) => WelcomeScreen(),
        Home.path: (context) => Home(),
        LoginScreen.path: (context) => LoginScreen(),
        RegistrationScreen.path: (context) => RegistrationScreen(),
        RequestResponse.path: (context) => RequestResponse(),
        ResponseListScreen.path: (context) => ResponseListScreen(),
        SearchScreen.path: (context) => SearchScreen(),
        SendRequest.path: (context) => SendRequest(),

      }
    );
  }
}
