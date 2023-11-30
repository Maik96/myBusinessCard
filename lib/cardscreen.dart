import 'package:flutter/material.dart';
import 'package:my_card/constants.dart';

class MyBusinessCard extends StatelessWidget {
  const MyBusinessCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 16, 16, 16),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("images/maik.png"),
            ),
            SizedBox(height: 10),
            Text(
              name,
              style: TextStyle(
                  fontFamily: "BebasNeue",
                  fontSize: 40,
                  letterSpacing: 0.5,
                  color: Color.fromARGB(255, 228, 228, 228),
                  fontWeight: FontWeight.bold),
            ),
            Text(
              desc,
              style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 0.5,
                  color: Colors.white,
                  fontFamily: "Source Sans Pro"),
            ),
            SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.white,
                )),
            Card(
              //  padding: const EdgeInsets.all(5),
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Padding(
                padding: EdgeInsets.all(1.0),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    size: 40,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  title: Text(
                    email,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
