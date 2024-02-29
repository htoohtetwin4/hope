import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:hope_app/constants.dart';

class BottomNavBar extends StatefulWidget {
  final Function(int)? onTap;

  const BottomNavBar({Key? key, this.onTap}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: hBaseColorOne,
      color: hBaseColorTwo,
      items: <Widget>[
        Icon(Icons.propane_tank_outlined, size: 30),
        Icon(Icons.home, size: 30),
        Icon(Icons.video_camera_back_outlined, size: 30),
        Icon(Icons.person_outline_outlined, size: 30),
      ],
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
        if (widget.onTap != null) {
          widget.onTap!(index);
        }
      },
    );
  }
}
