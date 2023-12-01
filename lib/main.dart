import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_card/cardscreen.dart';

void main() {
  runApp(const MyCard());
}

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return const CupertinoApp(
        debugShowCheckedModeBanner: false,
        home: MyBusinessCard(),
      );
    } else if (!Platform.isIOS) {
      return const MaterialApp(
          debugShowCheckedModeBanner: false, home: MyBusinessCard());
    }
    return ErrorWidget("Only on Mobile Devices available");
  }
}
