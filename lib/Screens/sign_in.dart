import 'package:flutter/material.dart';
import 'package:graduation_project/Screens/forget_pass.dart';
import 'package:graduation_project/Screens/home_screen.dart';
import 'package:graduation_project/Screens/register.dart';
import 'package:graduation_project/constans.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  bool showPass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Opacity(
              opacity: 0.4,
              child: Image.asset(
                'assets/images/sign in.jpg',
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(height: 20,),
                  const Text(
                    'LOG IN',
                    style: TextStyle(
                        fontFamily: 'cairo-light',
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.4),
                        border: Border.all(
                          color: Colors.white,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: MediaQuery.of(context).size.height * 0.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Phone',
                              style: TextStyle(
                                  fontFamily: 'cairo-light',
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextFormField(
                              cursorColor: signInColor,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(vertical: 10),
                                prefixIcon: const Icon(Icons.phone,color: Colors.grey,),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: signInColor),
                                  borderRadius: BorderRadius.circular(
                                      signInBorder.toDouble()),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        signInBorder.toDouble()),
                                    borderSide: BorderSide(color: signInColor)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        signInBorder.toDouble()),
                                    borderSide: BorderSide(color: signInColor)),
                              ),
                              controller: phoneController,
                              keyboardType: TextInputType.phone,
                              validator: (String? value) {
                                if (value!.length < 11) {
                                  return 'Phone number is too small';
                                }
                                return null;
                              },
                            ),
                            const Text(
                              'Password',
                              style: TextStyle(
                                  fontFamily: 'cairo-light',
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextFormField(
                              cursorColor: signInColor,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(vertical: 10),
                                prefixIcon: const Icon(Icons.password,color: Colors.grey,),
                                filled: true,
                                fillColor: Colors.white,
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        showPass = !showPass;
                                      });
                                    },
                                    icon: Icon(
                                      showPass
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Colors.grey,
                                    )),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: signInColor),
                                  borderRadius: BorderRadius.circular(
                                      signInBorder.toDouble()),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        signInBorder.toDouble()),
                                    borderSide: BorderSide(color: signInColor)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        signInBorder.toDouble()),
                                    borderSide: BorderSide(color: signInColor)),
                              ),
                              obscureText: showPass,
                              controller: passwordController,
                              keyboardType: TextInputType.visiblePassword,
                              validator: (String? value) {
                                if (value!.isEmpty) {
                                  return 'Password can\'t be empty';
                                }
                                return null;
                              },
                            ),
                            TextButton(
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
                                      return  ForgetPassScreen();
                                    }));
                              },
                              child: const Text(
                                'Forget Password?',
                                style: TextStyle(
                                    fontFamily: 'cairo-light',
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.4,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        border: Border.all(
                          color: Colors.white,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(signInBorder.toDouble())),
                    child: MaterialButton(
                        onPressed: () {
                          if(formKey.currentState!.validate()){
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()),
                                    (route) => false);

                          }
                        },
                        child: const Text(
                          'Log in',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        )),
                  ),
                  TextButton(
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
                      'Create a new account?',
                      style: TextStyle(
                          fontFamily: 'cairo-light',
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
