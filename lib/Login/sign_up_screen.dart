import 'package:flutter/material.dart';
import 'package:hope_app/Login/login_screen.dart';
import 'package:hope_app/constants.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // padding: EdgeInsets.symmetric(vertical: 40),
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xffbbd2c5), Color(0xFFA4C639), Color(0xFF81B93D)],
          stops: [0, 0.5, 1],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(50),
              child: Column(
                children: <Widget>[
                  Text(
                    "Create ",
                    style: TextStyle(
                        color: Colors.white, fontSize: 40, fontWeight: fw_5),
                  ),
                  Text(
                    " Account",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
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
                            child: Text("Login",
                                style: TextStyle(
                                    color: hSecondaryColor, fontWeight: fw_9)),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                          child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                        },
                        child: Text(
                          "Already Have Account?",
                          style: TextStyle(
                              color: hBaseColorThree, fontWeight: fw_9),
                        ),
                      ))
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
