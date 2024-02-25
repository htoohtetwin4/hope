import 'package:flutter/material.dart';
import 'package:hope_app/constants.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // int _page = 0;
  // GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   flexibleSpace: Container(
        //     decoration: BoxDecoration(
        //       gradient: LinearGradient(
        //         colors: [hBaseColorOne, hBaseColorTwo, hBaseColorThree],
        //         stops: [0, 0.5, 1],
        //         begin: Alignment.topLeft,
        //         end: Alignment.bottomRight,
        //       ),
        //     ),
        //   ),
        //   title: Text(
        //     "Hope",
        //     style: TextStyle(color: Colors.white, fontWeight: fw_6, fontSize: 30),
        //   ),
        // ),
        appBar: AppBar(
          title: Text(
            "Hope",
            style:
                TextStyle(color: Colors.white, fontWeight: fw_6, fontSize: 30),
          ),
          centerTitle: true,
          backgroundColor: hBaseColorThree,
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          actions: [
            IconButton(
                onPressed: () => {},
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                )),
            // IconButton(onPressed: () => {}, icon: Icon(Icons.more_vert)),
          ],
        ),
        bottomNavigationBar: Container(
          width: MediaQuery.of(context).size.width,
          child: CurvedNavigationBar(
            backgroundColor: hBaseColorOne,
            // key: _bottomNavigationKey,
            color: hBaseColorTwo,
            items: <Widget>[
              Icon(Icons.propane_tank_outlined, size: 30),
              Icon(Icons.home, size: 30),
              Icon(Icons.video_camera_back_outlined, size: 30),
              Icon(Icons.person_outline_outlined, size: 30),
            ],
            onTap: (index) {
              // setState(
              //   () {
              //     _page = index;
              //   },
              // );
            },
          ),
        ),
        body: Container(
          color: hBaseColorOne,
          child: Center(
            child: Column(
              children: <Widget>[
                // Text(_page.toString(), textScaleFactor: 10.0),
                ElevatedButton(
                  child: Text('Go To Page of index 1'),
                  onPressed: () {
                    //Page change using state does the same as clicking index 1 navigation button
                    // final CurvedNavigationBarState? navBarState =
                    // _bottomNavigationKey.currentState;
                    // navBarState?.setPage(1);
                  },
                )
              ],
            ),
          ),
        )

        // body: SingleChildScrollView(
        //   child: Column(
        //     children: [
        //       // Your content here
        //       Container(
        //         color: Colors.red,
        //       )
        //     ],
        //   ),
        // ),
        );
  }
}
