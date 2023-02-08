import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graduation_project/Screens/start.dart';

import '../constans.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:Stack(
        children: [
          Positioned.fill(
              child: Opacity(
                opacity: 0.3,
                child: Image.asset(
                  'assets/images/1.jpg',
                  fit: BoxFit.cover,
                ),
              )),
          Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/logo icon.png',
                  height: 430,
                  width: 300,
                ),
                 Text(
                  appName,
                  style: TextStyle(
                    fontSize: 80,
                    fontFamily: 'khaled_font',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            transitionDuration:
                            const Duration(milliseconds: 500),
                            transitionsBuilder:
                                (context, animation, animationTime, child) {
                              animation = CurvedAnimation(
                                  parent: animation, curve: Curves.easeIn);
                              return ScaleTransition(
                                scale: animation,
                                alignment: Alignment.bottomCenter,
                                child: child,
                              );
                            },
                            pageBuilder: (context, animation, animationTime) {
                              return const StartScreen();
                            })
                    );
                  },
                  child: SpinKitPumpingHeart(
                    itemBuilder: (BuildContext context, int index) {
                      return DecoratedBox(
                        decoration: const BoxDecoration(),
                        child: Center(
                            child: Text(
                              'Go',
                              style: TextStyle(
                                fontFamily: 'khaled_font',
                                color: Colors.red[700],
                                fontSize: 40,
                              ),
                            )),
                      );
                    },
                    duration: const Duration(milliseconds: 1000),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
