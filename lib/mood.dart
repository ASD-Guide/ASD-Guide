import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:asdguide/options.dart';
import 'package:auto_size_text/auto_size_text.dart';
class MyMood extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Mood(),
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
              padding: const EdgeInsets.all(30.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        AutoSizeText(
                          "HELLO\nKIDDIE!",
                          style: TextStyle(
                            fontFamily: 'Forum',
                            color: Colors.white,
                            fontSize: 45.0,
                          ),
                        ),
                      ],
                    ),
                    Text("How are you feeling?",
                      style: TextStyle(
                        fontSize: 27.0,
                        fontFamily: 'ZillaSlab',
                        color: Colors.white,
                      ),
                    ),
                    Container(
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
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MyOptions(),
                                      ),
                                    );
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
                          SizedBox(height: 40.0,),
                        ],
                      ),
                    ),
                  ]
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
