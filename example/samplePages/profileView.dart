// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
          child: Text(
        'Profile page',
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
