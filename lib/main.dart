// ignore_for_file: library_private_types_in_public_api

import 'package:fab_menu_bottomnav/samplePages/helpView.dart';
import 'package:fab_menu_bottomnav/samplePages/homeview.dart';
import 'package:fab_menu_bottomnav/samplePages/profileView.dart';
import 'package:fab_menu_bottomnav/samplePages/searchview.dart';
import 'package:fab_menu_bottomnav/src/navbar.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Floating NavBar Example',
        home: NaviBar(
          fabColor: Colors.red,
          navBarColor: Colors.white,
          fabIconColor: Colors.green,
          fabItems: [
            FabCont(
              icon: Icons.place,
              text: 'plane',
              color: Colors.red,
            ),
            FabCont(
              icon: Icons.javascript,
              text: 'plane',
              color: Colors.blue,
            ),
            FabCont(
              icon: Icons.air,
              text: 'plane',
              color: Colors.purple,
            ),
          ],
          routeList: [
            Home(),
            Search(),
            Help(),
            Profile(),
          ],
          navIconSize: 24,
          navIcon1: Icons.home,
          navIcon2: Icons.home,
          navIcon3: Icons.home,
          navIcon4: Icons.home,
          navIconColor: Colors.black,
        ));
  }
}
