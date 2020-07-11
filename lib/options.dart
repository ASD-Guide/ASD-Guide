import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:auto_size_text/auto_size_text.dart';
class MyOptions extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Options(),
    );
  }
}
class Options extends StatefulWidget {
  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              color: Colors.black87,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.lightBlue[900], Colors.black],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    AutoSizeText(
                      "Dont be sad kiddo! ",
                      maxLines: 1,
                      style: TextStyle(
                        fontFamily: 'BreeSerif',
                        color: Colors.white,
                        fontSize: 25.0,
                      ),
                    ),
                    Image(
                      height: 180.0,
                      image: AssetImage('images/logo_options.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: AutoSizeText("We have some exciting things for you..",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'ZillaSlab',
                            fontSize: 20.0,
                          ),
                        maxLines: 2,
                      ),
                    ),
                    AutoSizeText("You can select any of these",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'ZillaSlab',
                        fontSize: 20.0,
                      ),
                      maxLines: 1,
                    ),
                    ButtonTheme(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      splashColor: Colors.red[400],
                      minWidth: 300.0,
                      height: 60.0,
                      child: RaisedButton(
                        color: Colors.lightBlue[900],
                        child: AutoSizeText(
                          "Watch Cartoon Videos",
                          style: TextStyle(
                              fontFamily: 'Forum',
                              fontSize: 22.0,
                              color: Colors.white
                          ),
                        ),
                        onPressed: (){},
                      ),
                    ),
                    ButtonTheme(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      splashColor: Colors.red[400],
                      minWidth: 300.0,
                      height: 60.0,
                      child: RaisedButton(
                        color: Colors.lightBlue[900],
                        child: AutoSizeText(
                          "Go out and play!",
                          style: TextStyle(
                              fontSize: 22.0,
                              fontFamily: 'Forum',
                              color: Colors.white
                          ),
                        ),
                        onPressed: (){},
                      ),
                    ),
                    ButtonTheme(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      splashColor: Colors.red[400],
                      minWidth: 300.0,
                      height: 60.0,
                      child: RaisedButton(
                        color: Colors.lightBlue[900],
                        child: AutoSizeText(
                          "Play Games!",
                          style: TextStyle(
                              fontSize: 22.0,
                              fontFamily: 'Forum',
                              color: Colors.white
                          ),
                        ),
                        onPressed: (){},
                      ),
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
