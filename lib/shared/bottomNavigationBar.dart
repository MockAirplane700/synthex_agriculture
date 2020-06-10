/*  The bottom navigation bar

 */

import 'package:flutter/material.dart';
import 'package:synthexagriculture/screens/farmProfile/farmSocialProfile.dart';
import 'package:synthexagriculture/screens/home/home.dart';
import 'package:synthexagriculture/screens/social/social.dart';

class NavigationBar extends StatefulWidget {

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _selectedIndex = 0;

  static const TextStyle optionsStyle = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold
  );

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionsStyle,
    ),
    Text(
      'Index 1: Social',
      style: optionsStyle,
    ),
    Text(
      'Index 2: Profile',
      style: optionsStyle,
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      if(_selectedIndex == 0) {
        //go to the home page
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Home(),
                settings: RouteSettings(
                    arguments: _selectedIndex
                )
            )
        );
      } else if(_selectedIndex == 1){
        // go to the additions page
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Social(),
                settings: RouteSettings(
                    arguments: _selectedIndex
                )
            )
        );
      }else{
        //go to the last page
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Home(),
                settings: RouteSettings(
                    arguments: _selectedIndex
                )
            )
        );
      }//end if-else
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home')
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.add),
            title: Text("Social")
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.remove),
            title: Text("Null")
        )
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.green,
      onTap: _onItemTapped,
    );
  }
}