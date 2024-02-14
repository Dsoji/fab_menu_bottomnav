import 'package:fab_menu_bottomnav/samplePages/helpView.dart';
import 'package:fab_menu_bottomnav/samplePages/homeview.dart';
import 'package:fab_menu_bottomnav/samplePages/profileView.dart';
import 'package:fab_menu_bottomnav/samplePages/searchview.dart';
import 'package:fab_menu_bottomnav/src/bar_item.dart';
import 'package:fab_menu_bottomnav/src/navbar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Floating NavBar Example',
        home: NaviBar(
          fabColor: Colors.red,
          navBarColor: Colors.white,
          fabIconColor: Colors.green,
          bottomNavItems: [
            BottomNav(
              color: Colors.pink,
              index: 0,
              onTap: () {},
              label: 'home',
              size: 24,
              icon: Icons.home,
            ),
            BottomNav(
              color: Colors.pink,
              index: 1,
              onTap: () {},
              label: 'search',
              size: 24,
              icon: Icons.home,
            ),
            BottomNav(
              color: Colors.pink,
              index: 2,
              onTap: () {},
              label: 'help',
              size: 24,
              icon: Icons.home,
            ),
            BottomNav(
              color: Colors.pink,
              index: 3,
              onTap: () {},
              label: 'profile',
              size: 24,
              icon: Icons.home,
            ),
          ],
          fabItems: const [
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
        ));
  }
}
