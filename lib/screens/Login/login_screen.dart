import 'package:flutter/material.dart';
import 'package:hope_app/screens/Login/sign_up_screen.dart';
import 'package:hope_app/constants.dart';
import 'package:hope_app/screens/home/body.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        // padding: EdgeInsets.symmetric(vertical: 40),
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [hBaseColorOne, hBaseColorTwo, hBaseColorThree],
          stops: [0, 0.5, 1],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 150),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Text(
                    "Hope",
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            //login space
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: hSecondaryColor,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.elliptical(300, 70))),
                //login box
                child: Padding(
                  padding: EdgeInsets.all(50),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: hSecondaryColor,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: hBaseColorOne,
                                  offset: Offset(0, 1),
                                  blurRadius: 10)
                            ]),
                        child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.green)),
                                    hintText: 'Username',
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.green)),
                                    hintText: 'Password',
                                  ),
                                ),
                              ],
                            )),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                            color: hBaseColorThree,
                          ),
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const MainScreen()));
                              },
                              child: Text("Login",
                                  style: TextStyle(
                                      color: hSecondaryColor,
                                      fontWeight: fw_9)),
                            ),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Row(
                          children: [
                            Expanded(child: Text("forgot password?")),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SignUpScreen()));
                              },
                              child: Text(
                                "Register Now",
                                style: TextStyle(
                                    color: hBaseColorThree, fontWeight: fw_9),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
