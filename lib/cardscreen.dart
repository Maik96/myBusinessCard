import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_card/constants.dart';

class MyBusinessCard extends StatelessWidget {
  const MyBusinessCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("images/maik.png"),
            ),
            const SizedBox(height: 10),
            Text(
              name,
              style: TextStyle(
                  fontFamily: "BebasNeue",
                  fontSize: 40,
                  letterSpacing: 0.5,
                  color: white,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              desc,
              style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 0.5,
                  color: Colors.white,
                  fontFamily: "Source Sans Pro"),
            ),
            const SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.white,
                )),
            Card(
                //  padding: const EdgeInsets.all(5),
                color: Colors.white,
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: (!Platform.isIOS)
                      ? const ListTile(
                          leading: Icon(
                            Icons.mail,
                            size: 40,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          title: Text(
                            email,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        )
                      : const ListTile(
                          leading: Icon(
                            CupertinoIcons.mail,
                            size: 30,
                            color: Colors.black,
                          ),
                          title: Text(email,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black)),
                        ),
                )),
          ],
        ),
      )),
    );
  }
}
