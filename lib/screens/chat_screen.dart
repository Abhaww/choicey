import 'package:choicey/components/reusable_text_field.dart';
import 'package:choicey/themes/colors.dart';
import 'package:choicey/themes/styles.dart';
import 'package:choicey/themes/text_style.dart';
import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChatScreen extends StatefulWidget {
  static String path = 'route';
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController _textEditingController = TextEditingController();
  String? message;
  static const styleSomebody = BubbleStyle(
    nip: BubbleNip.leftCenter,
    color: kCardBackgroundColor,
    borderWidth: 1,
    elevation: 4,
    margin: BubbleEdges.only(top: 20, bottom: 10.0, right: 50),
    alignment: Alignment.topLeft,
  );

  static const styleMe = BubbleStyle(
    nip: BubbleNip.rightCenter,
    color: kButtonColor,
    borderWidth: 1,
    elevation: 4,
    margin: BubbleEdges.only(top: 20, left: 50, bottom: 10.0),
    alignment: Alignment.topRight,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                color: kButtonColor,
                borderRadius: BorderRadius.circular(100.0),
              ),
              child: Center(
                child: Icon(FontAwesomeIcons.userAlt, color: kMainColor,),
              ),
            ),
            SizedBox(width: 10.0,),
            Text('Company\'s name', style: kTextStyle1,),
          ],
        ),
        titleSpacing: 1.5,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
                children: [
                  Bubble(
                    style: styleSomebody,
                    child: Text(
                        'Hi Jason. Sorry to bother you. I have a queston for you.', style: kTextStyle1,),
                  ),
                  Bubble(
                    style: styleMe,
                    child: Text('Whats\'up?', style: kTextStyle1,),
                  ),
                  Bubble(
                    style: styleMe,
                    child: Text('Please can you help me repair some Air conditioning system', style: kTextStyle1,),
                  ),
                  Bubble(
                    style: styleMe,
                    child: Text('Its urgent', style: kTextStyle1,),
                  ),
                  Bubble(
                    style: styleSomebody,
                    child: Text(
                      'Ok what\'s your location', style: kTextStyle1,),
                  ),
                  Bubble(
                    style: styleSomebody,
                    child: Text(
                      'And how much are you going to pay me?', style: kTextStyle1,),
                  ),
                  Bubble(
                    style: styleSomebody,
                    child: Text(
                      'Hi Jason. Sorry to bother you. I have a queston for you.', style: kTextStyle1,),
                  ),
                  Bubble(
                    style: styleMe,
                    child: Text('Whats\'up?', style: kTextStyle1,),
                  ),
                  Bubble(
                    style: styleMe,
                    child: Text('Please can you help me repair some Air conditioning system', style: kTextStyle1,),
                  ),
                  Bubble(
                    style: styleMe,
                    child: Text('Its urgent', style: kTextStyle1,),
                  ),
                  Bubble(
                    style: styleSomebody,
                    child: Text(
                      'Ok what\'s your location', style: kTextStyle1,),
                  ),
                  Bubble(
                    style: styleSomebody,
                    child: Text(
                      'And how much are you going to pay me?', style: kTextStyle1,),
                  ),
                ],
              ),
          ),
        ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: ReusableTextField(
                    color: kCardBackgroundColor,
                    hint: 'Enter message here',
                    textEditingController: _textEditingController,
                    onChanged: (value){
                      setState(() {
                        message = value;
                      });
                    },
                  ),
                ),
                SizedBox(width: 10.0,),
                Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: kBoxDecoration,
                  child: Center(
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.solidPaperPlane, color: kMainColor,),
                      onPressed: (){
                        /// Todo: send message
                      },
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
