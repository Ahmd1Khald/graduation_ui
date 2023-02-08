import 'package:flutter/material.dart';
import 'package:graduation_project/Screens/home_screen.dart';
import 'package:graduation_project/Screens/sign_in.dart';
import 'package:graduation_project/constans.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var userNameController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool showPass = true;
  bool showConfirmPass = true;

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
                'assets/images/register.jpg',
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
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'REGISTER',
                    style: TextStyle(
                        fontFamily: 'cairo-light',
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.65,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.4),
                        border: Border.all(
                          color: Colors.white,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: MediaQuery.of(context).size.height * 0.65,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Username',
                              style: TextStyle(
                                  fontFamily: 'cairo-light',
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextFormField(
                              cursorColor: registerColor,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.person,color: Colors.grey,),
                                contentPadding: const EdgeInsets.symmetric(vertical: 10),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: registerColor,),
                                  borderRadius: BorderRadius.circular(
                                      registerBorder.toDouble()),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        registerBorder.toDouble()),
                                    borderSide:
                                        BorderSide(color: registerColor)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        registerBorder.toDouble()),
                                    borderSide:
                                        BorderSide(color: registerColor)),
                              ),
                              controller: userNameController,
                              keyboardType: TextInputType.name,
                              validator: (String? value) {
                                if (value!.isEmpty) {
                                  return 'Username is too small';
                                }
                                return null;
                              },
                            ),
                            const Text(
                              'Phone',
                              style: TextStyle(
                                  fontFamily: 'cairo-light',
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextFormField(
                              cursorColor: registerColor,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.phone,color: Colors.grey,),
                                contentPadding: const EdgeInsets.symmetric(vertical: 10),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: registerColor),
                                  borderRadius: BorderRadius.circular(
                                      registerBorder.toDouble()),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        registerBorder.toDouble()),
                                    borderSide:
                                        BorderSide(color: registerColor)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        registerBorder.toDouble()),
                                    borderSide:
                                        BorderSide(color: registerColor)),
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
                              cursorColor: registerColor,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.password,color: Colors.grey,),
                                contentPadding: const EdgeInsets.symmetric(vertical: 10),
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
                                  borderSide: BorderSide(color: registerColor),
                                  borderRadius: BorderRadius.circular(
                                      registerBorder.toDouble()),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        registerBorder.toDouble()),
                                    borderSide:
                                        BorderSide(color: registerColor)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        registerBorder.toDouble()),
                                    borderSide:
                                        BorderSide(color: registerColor)),
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
                            const Text(
                              'Confirm password',
                              style: TextStyle(
                                  fontFamily: 'cairo-light',
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextFormField(
                              cursorColor: registerColor,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.password,color: Colors.grey,),
                                contentPadding: const EdgeInsets.symmetric(vertical: 10),
                                filled: true,
                                fillColor: Colors.white,
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        showConfirmPass = !showConfirmPass;
                                      });
                                    },
                                    icon: Icon(
                                      showConfirmPass
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Colors.grey,
                                    )),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: registerColor),
                                  borderRadius: BorderRadius.circular(
                                      registerBorder.toDouble()),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        registerBorder.toDouble()),
                                    borderSide:
                                    BorderSide(color: registerColor)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        registerBorder.toDouble()),
                                    borderSide:
                                    BorderSide(color: registerColor)),
                              ),
                              obscureText: showConfirmPass,
                              controller: confirmPasswordController,
                              keyboardType: TextInputType.visiblePassword,
                              validator: (String? value) {
                                if (confirmPasswordController.text!=passwordController.text) {
                                  return 'Password incorrect';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        border: Border.all(
                          color: Colors.white,
                          width: 3,
                        ),
                        borderRadius:
                            BorderRadius.circular(registerBorder.toDouble())),
                    child: MaterialButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()),
                                    (route) => false);
                          }
                        },
                        child: const Text(
                          'Register',
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
                            return  const SignInScreen();
                          }));
                    },
                    child: const Text(
                      'Already have an account?',
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
