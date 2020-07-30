import 'package:flutter/material.dart';
import 'package:flutter_splash/Animations/FadeAnimation.dart';

void main() => runApp(MaterialApp(home: HomePage()));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // AnimationController _scaleController;
  // AnimationController _scale2Controller;
  // AnimationController _widthController;
  // AnimationController _positionController;

  // Animation<double> _scaleAnimation;
  // Animation<double> _scale2Animation;
  // Animation<double> _widthAnimation;
  // Animation<double> _positionAnimation;

  // bool hideIcon = false;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color.fromRGBO(3, 9, 23, 1),
      body: Container(
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: -50,
              left: 0,
              child: FadeAnimation(
                  1,
                  Container(
                      width: width,
                      height: 400,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/one.png'),
                              fit: BoxFit.cover)))),
            ),
            Positioned(
              top: -100,
              left: 0,
              child: FadeAnimation(
                  1.3,
                  Container(
                      width: width,
                      height: 400,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/one.png'),
                              fit: BoxFit.cover)))),
            ),
            Positioned(
              top: -150,
              left: 0,
              child: FadeAnimation(
                  1.6,
                  Container(
                      width: width,
                      height: 400,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/one.png'),
                              fit: BoxFit.cover)))),
            ),
            Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeAnimation(
                        1,
                        Text(
                          "Welcome",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                          ),
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    FadeAnimation(
                        1.3,
                        Text(
                          "We promis that you'll have the most \nfuss-free time with us ever.",
                          style: TextStyle(
                              color: Colors.white.withOpacity(.7),
                              height: 1.4,
                              fontSize: 20),
                        )),
                    SizedBox(
                      height: 180,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
