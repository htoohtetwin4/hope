import 'package:flutter/material.dart';
import 'package:hope_app/constants.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:hope_app/screens/media/video.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController _pageController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int index) {
    if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                DetailVideoScreen()), // Navigate to the VideoScreen
      );
    } else {
      _pageController.animateToPage(
        index,
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Padding(
          padding: EdgeInsets.only(left: 14.0),
          child: Text(
            "Explore",
            style: TextStyle(
              color: Colors.white,
              fontWeight: fw_6,
              fontSize: 30,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: hBaseColorThree,
        actions: [
          IconButton(
            onPressed: () => {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: hBaseColorOne,
        color: hBaseColorTwo,
        items: <Widget>[
          Icon(Icons.propane_tank_outlined, size: 30),
          Icon(Icons.home, size: 30),
          Icon(Icons.video_camera_back_outlined, size: 30),
          Icon(Icons.person_outline_outlined, size: 30),
        ],
        onTap: _onItemTapped,
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: <Widget>[
          Container(
            color: hBaseColorOne,
            child: Center(
              child: Text("Page 1"), // Your first page content
            ),
          ),
          Container(
            color: hBaseColorOne,
            child: Center(
              child: Text("Page 2"), // Your second page content
            ),
          ),
          Container(
            color: hBaseColorOne,
            child: Center(
              child: Text("Page 3"), // Placeholder for the video screen
            ),
          ),
          Container(
            color: hBaseColorOne,
            child: Center(
              child: Text("Page 4"), // Your fourth page content
            ),
          ),
        ],
      ),
    );
  }
}
