import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                UserAccountsDrawerHeader(
                  arrowColor: Colors.grey,
                  decoration: BoxDecoration(color: Colors.grey[600]),
                  accountName: Text(
                    "Kerollos",
                    style: TextStyle(color: Colors.white),
                  ),
                  accountEmail: Text(
                    "Keros@gmail.com",
                    style: TextStyle(color: Colors.white),
                  ),
                  currentAccountPicture: CircleAvatar(
                      backgroundImage:
                      AssetImage("assets/images/workshop man.jpg")),
                ),
                Positioned(
                    top: MediaQuery.of(context).size.height * 0.26,
                    left: MediaQuery.of(context).size.width * 0.87,
                    child: CircleAvatar(
                      radius: 20,
                      child:
                      IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                    ))
              ],
            ),
            //ListTile(onTap: (){},leading: ,)
          ],
        ),
      ),
    );
  }
}