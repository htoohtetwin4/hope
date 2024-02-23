import 'package:flutter/material.dart';
import 'package:hope_app/Login/login_screen.dart';
import 'package:hope_app/constants.dart';
import 'package:hope_app/home/home_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffbbd2c5), Color(0xFFA4C639), Color(0xFF81B93D)],
            stops: [0, 0.5, 1],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: size.height * 0.05),
              Padding(
                padding: EdgeInsets.all(50),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Create ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " Account",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.05),
              Container(
                decoration: BoxDecoration(
                  color: hSecondaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.elliptical(300, 70),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(50),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 50),
                      Container(
                        decoration: BoxDecoration(
                          color: hSecondaryColor,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: hBaseColorOne,
                              offset: Offset(0, 1),
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                TextFormField(
                                  decoration: InputDecoration(
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.green,
                                      ),
                                    ),
                                    hintText: 'Enter your name',
                                    prefixIcon: Icon(
                                      Icons.person,
                                      color: hBaseColorTwo,
                                      size: 24,
                                    ),
                                  ),
                                  validator: (String? value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your name';
                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(height: 10),
                                TextFormField(
                                  decoration: InputDecoration(
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.green,
                                      ),
                                    ),
                                    hintText: 'Enter your email',
                                    prefixIcon: Icon(
                                      Icons.email,
                                      color: hBaseColorTwo,
                                      size: 24,
                                    ),
                                  ),
                                  validator: (String? value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your email';
                                    }
                                    if (!value.contains('@') ||
                                        !value.endsWith('@gmail.com')) {
                                      return 'Please enter a valid Gmail address';
                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(height: 10),
                                TextFormField(
                                  obscureText: true,
                                  controller: _passwordController,
                                  decoration: InputDecoration(
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.green,
                                      ),
                                    ),
                                    hintText: 'Password',
                                    prefixIcon: Icon(
                                      Icons.lock,
                                      color: hBaseColorTwo,
                                      size: 24,
                                    ),
                                  ),
                                  validator: (String? value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your password';
                                    }
                                    if (value.length < 8) {
                                      return 'Password must be at least 8 characters';
                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(height: 10),
                                TextFormField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.green,
                                      ),
                                    ),
                                    hintText: 'Confirm password',
                                    prefixIcon: Icon(
                                      Icons.lock,
                                      color: hBaseColorTwo,
                                      size: 24,
                                    ),
                                  ),
                                  validator: (String? value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your password';
                                    }
                                    if (value != _passwordController.text) {
                                      return 'Passwords do not match';
                                    }
                                    return null;
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        child: SizedBox.expand(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: hBaseColorThree,
                              onPrimary: hSecondaryColor,
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                print("Successfully Created");
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HomeScreen()));
                              }
                            },
                            child: Text("Create Account"),
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.05),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ),
                            );
                          },
                          child: Text(
                            "Already Have Account?",
                            style: TextStyle(
                              color: hBaseColorThree,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.05),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
