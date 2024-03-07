import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:hope_app/constants.dart';
import 'package:hope_app/screens/home/home_screen.dart';
import 'package:hope_app/screens/media/videoes_screen.dart';
import 'package:hope_app/screens/product/products_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          ProductsScreen(),
          HomeScreen(),
          VideoesScreen(),
        ],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(iconTheme: IconThemeData(color: Colors.white)),
        child: CurvedNavigationBar(
          backgroundColor: hBaseColorOne,
          color: hBaseColorTwo,
          buttonBackgroundColor: hBaseColorTwo,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 300),
          height: 60,
          index: _selectedIndex,
          items: <Widget>[
            Icon(Icons.propane_tank_outlined, size: 30),
            Icon(Icons.home, size: 30),
            Icon(Icons.video_camera_back_outlined, size: 30),
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
