import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:asdguide/options.dart';

class MyMood extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Mood(),
      routes: <String,WidgetBuilder>
      {
        "/b": (BuildContext context) => MyOptions(),
      },
    );
  }
}

class Mood extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Mood> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image(
              image: AssetImage('images/bg.jpg'),
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.darken,
              color: Colors.black38,
            ),
            Padding(
              padding: const EdgeInsets.only(top:50.0, left:150.0),
              child: Container(
                child: Text(
                  "HELLO KIDDIE !",
                  style: TextStyle(
                    fontFamily: 'Forum',
                    color: Colors.white,
                    fontSize: 45.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:200.0, left:40.0),
              child: Text("How are you feeling?",
                style: TextStyle(
                  fontSize: 27.0,
                  fontFamily: 'ZillaSlab',
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              left: 30.0,
              top:270.0,
              child: Container(
                width:300.0,
                height: 300.0,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 40.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image(
                          width:80.0,
                          image: AssetImage('images/happy.png'),
                        ),
                        ButtonTheme(
                          minWidth: 180.0,
                          height: 50.0,
                          child: RaisedButton(
                            color: Colors.blueGrey[900],
                            onPressed: (){},
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), bottomLeft: Radius.circular(10.0))),
                            child: Text("Happy",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'BreeSerif',
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        ButtonTheme(
                          minWidth: 180.0,
                          height: 50.0,
                          child: RaisedButton(
                            onPressed: (){
                              Navigator.of(context).pushNamed("/b");
                            },
                            color: Colors.blueGrey[900],
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), bottomRight: Radius.circular(10.0))),
                            child: Text("Sad",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'BreeSerif',
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                        Image(
                          width: 80.0,
                          image: AssetImage('images/sad.png'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
