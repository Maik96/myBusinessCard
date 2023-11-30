import 'package:flutter/material.dart';
import 'package:my_card/cardscreen.dart';

void main() {
  runApp(const MyCard());
}

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return (const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyBusinessCard(),
    ));
  }
}
