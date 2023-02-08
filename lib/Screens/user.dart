import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UserScreen extends StatefulWidget {
  UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  File? image;

  final imagePicker = ImagePicker();

  bool isSwitched = false;

  uploadImage() async {
    var pickerImage = await imagePicker.getImage(source: ImageSource.gallery);
    if (pickerImage != null) {
      setState(() {
        image = File(pickerImage.path);
      });
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, bottom: 20),
            child: Center(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  image == null
                      ? const CircleAvatar(
                          radius: 65,
                          backgroundColor: Colors.grey,
                          backgroundImage:
                              AssetImage('assets/images/workshop man.jpg'),
                        )
                      : CircleAvatar(
                          radius: 65,
                          backgroundColor: Colors.grey,
                          backgroundImage: FileImage(
                            image!,
                          ),
                        ),
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 18,
                    child: Center(
                      child: IconButton(
                          onPressed: () {
                            uploadImage();
                          },
                          icon: const Icon(
                            Icons.add_a_photo,
                            size: 20,
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),

          ///User Name
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.person,
                size: 20,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Kerollos",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ],
          ),

          ///User Phone
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.phone,
                size: 20,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "+201061748098",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///Security Settings
                Text(
                  'Settings',
                  style: TextStyle(
                      color: Colors.blue[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.12,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: ListTile(
                      onTap: () {},
                      leading: const Icon(Icons.lock_open_outlined),
                      title: const Text(
                        'Privacy Settings',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),

                ///Theme Settings
                Text(
                  'App Mode',
                  style: TextStyle(
                      color: Colors.blue[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.12,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20, right: 35),
                          child: Icon(
                            Icons.brightness_2_outlined,
                            color: Colors.grey,
                          ),
                        ),
                        const Text(
                          'Theme Mode',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        const Spacer(),
                        Switch(
                          activeColor: Colors.green,
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),

                ///Logout Settings
                Text(
                  'Leave App',
                  style: TextStyle(
                      color: Colors.blue[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.12,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: ListTile(
                      onTap: () {
                        ///navigate and remove to login Screen
                      },
                      leading: const Icon(Icons.logout),
                      title: const Text(
                        'Log Out',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
