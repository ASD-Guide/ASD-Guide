import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Dont be sad kiddo! ",
                    style: TextStyle(
                      fontFamily: 'BreeSerif',
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 90.0,
              top: 90.0,
              child: Image(
                height: 180.0,
                image: AssetImage('images/logo_options.png'),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 30.0,right: 30.0, top: 40.0),
                  child: Text("We have some exciting things for you..",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'ZillaSlab',
                      fontSize: 20.0,
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Text("You can select any of these",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'ZillaSlab',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 300.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    ButtonTheme(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      splashColor: Colors.red[400],
                      minWidth: 300.0,
                      height: 60.0,
                      child: RaisedButton(
                        color: Colors.lightBlue[900],
                        child: Text(
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
                    SizedBox(height: 10.0,),
                    ButtonTheme(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      splashColor: Colors.red[400],
                      minWidth: 300.0,
                      height: 60.0,
                      child: RaisedButton(
                        color: Colors.lightBlue[900],
                        child: Text(
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
                    SizedBox(height: 10.0,),
                    ButtonTheme(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      splashColor: Colors.red[400],
                      minWidth: 300.0,
                      height: 60.0,
                      child: RaisedButton(
                        color: Colors.lightBlue[900],
                        child: Text(
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
