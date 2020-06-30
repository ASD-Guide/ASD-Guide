import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' ;
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String name="Garima";
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      home: new Scaffold(
        body:  SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                width: 500.0,
                height: 190.0,
                color: Colors.red,
                child:  Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Image(
                        height: 100.0,
                        image: AssetImage('images/logo_image.png'),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Welcome $name!",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'BreeSerif',
                        fontSize: 25.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 350.0,
                width: 330.0,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.redAccent[200],
                    ),
                  ],
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0), bottomRight: Radius.circular(10.0)),
                ),
                padding: EdgeInsets.only(left: 20.0,top: 20.0),
                child: Column(
                  children: <Widget>[
                    Text("The age of your child is 2 years 4 months. According to this age, some games have been selected for your child. Once"
                        " your child progresses "
                        "in these games, we will automatically upgrade its level",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

