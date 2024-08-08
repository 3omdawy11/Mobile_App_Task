import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double welcomeBordersValue = 80;
const BorderRadius welcomeBorders = BorderRadius.only(
  bottomLeft: Radius.circular(welcomeBordersValue),
  bottomRight: Radius.circular(welcomeBordersValue),
);
const double socialIconsPadding = 25;

const List<BottomNavigationBarItem> navigationBarItems = [
  BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: 'Home',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.person),
    label: 'Users',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.feed),
    label: 'Posts',
  ),
];

const TextStyle profileTextStyle = TextStyle(
  fontSize: 16,
  overflow: TextOverflow.ellipsis,
);

const TextStyle appBarTextStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: Colors.blue
);

const double profileIconSize = 65;


const double contactIconSize = 40;
final List<Map<String, dynamic>> socialIconData = [
  {'path': '', 'icon': Icon(FontAwesomeIcons.facebook, size: contactIconSize, color: Colors.blue.shade800)},
  {'path': '', 'icon': Icon(FontAwesomeIcons.instagram, size: contactIconSize, color: Colors.pink.shade700)},
  {'path': '', 'icon': const Icon(Icons.email_outlined, size: contactIconSize, color: Colors.grey)},
  {'path': '', 'icon': const Icon(FontAwesomeIcons.linkedinIn, size: contactIconSize, color: Colors.blue)},
  {'path': '', 'icon': const Icon(Icons.web, size: contactIconSize, color: Colors.orange)},
  {'path': '', 'icon': const Icon(Icons.phone, size: contactIconSize, color: Colors.green)},
];

const double postButtonsSize = 30;

const List<Widget> postButtons = [
  Icon(CupertinoIcons.heart, size: postButtonsSize,),
  SizedBox(width: 10,),
  Icon(CupertinoIcons.conversation_bubble, size: postButtonsSize,),
  SizedBox(width: 10,),
  Icon(CupertinoIcons.check_mark_circled, size: postButtonsSize,)
];

const TextStyle postBodyTextStyle  =  TextStyle(
  fontSize: 18,
  overflow: TextOverflow.ellipsis,
);

const TextStyle postTitleTextStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  overflow: TextOverflow.ellipsis,
);