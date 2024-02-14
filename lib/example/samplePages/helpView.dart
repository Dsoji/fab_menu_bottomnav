// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.red,
      body: Center(
          child: Text(
        'Help page',
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
