import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.brown,
      body: Center(
          child: Text(
        'Home page',
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
