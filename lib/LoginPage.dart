import 'package:asdguide/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:asdguide/display_age.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.black, Colors.blue[700], Colors.black],
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'images/signupimage.png',
              ),
              Form(
                child: Theme(
                  data: ThemeData(
                    brightness: Brightness.dark,
                    primarySwatch: Colors.teal,
                    inputDecorationTheme: InputDecorationTheme(
                      labelStyle:
                      TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        TextField(
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            fillColor: Colors.lightBlueAccent,
                            labelText: "E-mail",
                            labelStyle: TextStyle(color: Colors.white70),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        TextField(
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            fillColor: Colors.lightBlueAccent,
                            labelText: "Password",
                            labelStyle: TextStyle(color: Colors.white70),
                          ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        MaterialButton(
                          color: Colors.teal[300],
                          height: 50.0,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Display(),
                              ),
                            );
                          },
                          child: Padding(
                            padding:
                            const EdgeInsets.only(left: 15.0, right: 15.0),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 20.0,
                                fontFamily: 'Forum',
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          splashColor: Colors.red,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'New User?',
                              style: TextStyle(
                                color: Colors.white70,
                              ),
                            ),
                            FlatButton(
                              padding: EdgeInsets.all(0.0),
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUp()));
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
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
