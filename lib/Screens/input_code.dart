import 'package:flutter/material.dart';
import 'package:graduation_project/Screens/home_screen.dart';
import 'package:graduation_project/constans.dart';
import 'package:hexcolor/hexcolor.dart';

class InputCodeScreen extends StatelessWidget {
  InputCodeScreen({Key? key}) : super(key: key);

  var CodeController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Verification code',
                  style: TextStyle(
                    color: HexColor('#585858'),
                    fontFamily: 'cairo-light',
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Enter the code we sent',
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                Text(
                  'Code',
                  style: TextStyle(
                      fontFamily: 'cairo-light',
                      color: HexColor('#585858'),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                TextFormField(
                  cursorColor: signInColor,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 10),
                    prefixIcon: const Icon(
                      Icons.phone,
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: signInColor),
                      borderRadius:
                          BorderRadius.circular(signInBorder.toDouble()),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(signInBorder.toDouble()),
                        borderSide: BorderSide(color: signInColor)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(signInBorder.toDouble()),
                        borderSide: BorderSide(color: signInColor)),
                  ),
                  controller: CodeController,
                  keyboardType: TextInputType.phone,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'Code invalid';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(
                          color: Colors.white,
                          width: 3,
                        ),
                        borderRadius:
                            BorderRadius.circular(signInBorder.toDouble())),
                    child: MaterialButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {}
                        },
                        child: const Text(
                          'Confirm',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
