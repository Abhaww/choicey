import 'package:choicey/screens/search_screen.dart';
import 'package:choicey/screens/send_request_screen.dart';
import 'package:choicey/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'request_response_screen.dart';

class Home extends StatefulWidget {
  static String path = 'route';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  List<Widget> screens = [
    SendRequest(),
    SearchScreen(),
    RequestResponse(),
    SearchScreen(),
    SearchScreen(),
  ];
  void updatedIndex (int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 150,
            child: Image.asset('assets/images/choicey_logo.jpeg'),),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            label: 'Request',
              icon: Icon(
                FontAwesomeIcons.solidPaperPlane,
              ),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(
              FontAwesomeIcons.search,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Responses',
            icon: Icon(
              FontAwesomeIcons.envelopeOpen,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(
              FontAwesomeIcons.user,
            ),
          ),
          BottomNavigationBarItem(
            label: 'About Us',
            icon: Icon(
              FontAwesomeIcons.infoCircle,
            ),
          ),
        ],
        onTap: (index){
          updatedIndex(index);
        },
      ),
      body: screens.elementAt(_selectedIndex),
    );
  }
}

// Widget _aboutUs (){
//   return AboutDialog(
//     applicationIcon: Image,
//   );
// }
