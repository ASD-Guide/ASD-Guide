import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'mood.dart';


class MyAge extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    String name = "Garima";
    return MaterialApp(
      home: Display()
    );
  }
}

class Display extends StatefulWidget {
  @override
  _State createState() => _State();
}
class _State extends State<Display> {
  @override
  Widget build(BuildContext context) {
    String name="Garima";
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: 0.0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height:  MediaQuery.of(context).size.height* 0.6,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue[700], Colors.black],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top:80.0,left: 20.0,right: 20.0),
                      child: Text("The age of your child is 2 years 5 months. According to this age some games have been"
                          " selected for your child. Once your child progresses in these games, we will automatically upgrade "
                          "its level.",
                        style: TextStyle(
                          fontSize: 21.7,
                          fontFamily: 'Forum',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height:20.0),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: ButtonTheme(
                        minWidth: 118.0,
                        height: 50.0,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(45.0)),
                          child: Text("Got it!",
                            style: TextStyle(
                              fontFamily: 'Forum',
                              fontSize: 20.0,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          color: Colors.white,
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyMood(),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 50.0,
              left: 30.0,
              child: Container(
                width: 300.0,
                height: 230.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  gradient: LinearGradient(
                    colors: [Colors.blue[700],Colors.black],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,

                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top:10.0),
                      child: Image(
                        height: 100.0,
                        image: AssetImage(
                          'images/logo_image.png',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text("Welcome $name!",
                      style: TextStyle(
                        fontSize: 23.0,
                        fontFamily: 'BreeSerif',
                        color: Colors.white,
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
