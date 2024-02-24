import 'package:flutter/material.dart';
import 'package:hope_app/constants.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [hBaseColorOne, hBaseColorTwo, hBaseColorThree],
              stops: [0, 0.5, 1],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: Text(
          "Hope",
          style: TextStyle(color: Colors.white, fontWeight: fw_6, fontSize: 30),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: hBaseColorThree,
        items: <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      body: Container(
        child: Text("Home"),
      ),
    );
  }
}
