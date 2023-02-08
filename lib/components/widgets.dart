import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Widget notificationAcceptBuilder(context) => Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.15,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: HexColor('#CECECEB3'),
            border: Border.all(color: Colors.black)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black)),
                  child: const Icon(
                    Icons.person_outline,
                    size: 60,
                    color: Colors.black,
                  )),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(
                      Icons.done_all_sharp,
                      color: Colors.green,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Accepted',
                      style: TextStyle(
                          fontFamily: 'cairo-light',
                          fontSize: 15,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Text(
                  '(Service provider name) accepted your request.',
                  maxLines: 1,
                  style: TextStyle(
                      fontFamily: 'cairo-light',
                      fontSize: 12,
                      overflow: TextOverflow.ellipsis),
                )
              ],
            )
          ],
        ),
      ),
    );

Widget notificationDeniedBuilder(context) => Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.15,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: HexColor('#CECECEB3'),
            border: Border.all(color: Colors.black)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black)),
                  child: const Icon(
                    Icons.person_outline,
                    size: 60,
                    color: Colors.black,
                  )),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(
                      Icons.close_sharp,
                      color: Colors.red,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Denied',
                      style: TextStyle(
                          fontFamily: 'cairo-light',
                          fontSize: 15,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Text(
                  '(Service provider name) denied your request.',
                  maxLines: 1,
                  style: TextStyle(
                      fontFamily: 'cairo-light',
                      fontSize: 12,
                      overflow: TextOverflow.ellipsis),
                )
              ],
            )
          ],
        ),
      ),
    );
