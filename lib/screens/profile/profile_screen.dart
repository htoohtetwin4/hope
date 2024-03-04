import 'package:flutter/material.dart';
import 'package:hope_app/constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Padding(
          padding: EdgeInsets.only(left: 14.0),
          child: Text(
            "Profile",
            style: TextStyle(
              color: Colors.white,
              fontWeight: fw_6,
              fontSize: 30,
            ),
          ),
        ),
        backgroundColor: hBaseColorOne,
      ),
    );
  }
}
