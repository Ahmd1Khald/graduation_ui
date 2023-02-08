import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graduation_project/Screens/register.dart';
import 'package:graduation_project/Screens/sign_in.dart';
import 'package:hexcolor/hexcolor.dart';

import '../constans.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
              child: Opacity(
            opacity: 0.3,
            child: Image.asset(
              'assets/images/1.jpg',
              fit: BoxFit.cover,
            ),
          )),
          Column(
            children: [
             // const SizedBox(height: 50,),
              Column(
                children: [
                  Image.asset(
                    'assets/images/logo icon.png',
                    height: MediaQuery.of(context).size.height*0.45,
                    width: MediaQuery.of(context).size.height*0.3,
                  ),
                  const Text(
                    appName,
                    style: TextStyle(
                      fontSize: 45,
                      fontFamily: 'khaled_font',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],              ),
              const Spacer(),
              Container(
                height: MediaQuery.of(context).size.height*0.4,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: startColor,
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50))),
                child: Column(
                  children: [
                    SizedBox(
                      height:MediaQuery.of(context).size.height*0.09,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.7,
                      height: MediaQuery.of(context).size.height*0.09,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: MaterialButton(
                        onPressed: () {

                          Navigator.push(context, PageRouteBuilder(
                              transitionDuration:
                              const Duration(milliseconds: 500),
                              transitionsBuilder:
                                  (context, animation, animationTime, child) {
                                animation = CurvedAnimation(
                                    parent: animation, curve: Curves.easeIn);
                                return ScaleTransition(
                                  scale: animation,
                                  alignment: Alignment.center,
                                  child: child,
                                );
                              },
                              pageBuilder: (context, animation, animationTime) {
                                return  const SignInScreen();
                              }));
                        },
                        child: const Text(
                          'SIGN IN',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'cairo-light',
                              fontSize: 25),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.7,
                      height: MediaQuery.of(context).size.height*0.09,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(context, PageRouteBuilder(
                              transitionDuration:
                              const Duration(milliseconds: 500),
                              transitionsBuilder:
                                  (context, animation, animationTime, child) {
                                animation = CurvedAnimation(
                                    parent: animation, curve: Curves.easeIn);
                                return ScaleTransition(
                                  scale: animation,
                                  alignment: Alignment.center,
                                  child: child,
                                );
                              },
                              pageBuilder: (context, animation, animationTime) {
                                return  const RegisterScreen();
                              }));
                        },
                        child: const Text(
                          'REGISTER',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'cairo-light',
                              fontSize: 25),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
