import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new SignUp(),
    );
  }
}

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> with SingleTickerProviderStateMixin {
AnimationController _iconAnimationController;
Animation<double> _iconAnimation;

@override
void initState(){
  super.initState();
  _iconAnimationController = new AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500)
  );
  _iconAnimation = new CurvedAnimation(
      parent: _iconAnimationController,
      curve: Curves.bounceInOut
  );
  _iconAnimation.addListener(() => this.setState((){}));
  _iconAnimationController.forward();
}


@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.black,
                  Colors.teal,
                  Colors.black
                ]
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedBuilder(
                animation: _iconAnimation,
                builder: (BuildContext context, Widget child) {
                  String frame = _iconAnimation.value.toString().padLeft(3,'0');
                  return new Image.asset(
                    'images/logo_image.png',
                    gaplessPlayback: true,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

