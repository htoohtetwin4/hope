import 'package:flutter/material.dart';
import 'package:hope_app/constants.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

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
        onTap: (index) {
          // Handle navigation
        },
      ),
      body: Container(
        color: hBaseColorOne,
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //Search Bar
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  // height: 50,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.grey)),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Icon(
                        Icons.search,
                        size: 25,
                        color: hBaseColorThree,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search here!",
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: hBaseColorThree),
                          ),
                          onSubmitted: (value) {
                            print("Search query: $value");
                          },
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.clear,
                          color: Colors.red[700],
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
