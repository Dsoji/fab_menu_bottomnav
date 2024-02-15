import 'package:fab_menu_bottomnav/fab_menu_bottomnav.dart';

import 'package:flutter/material.dart';

import 'samplePages/helpView.dart';
import 'samplePages/homeview.dart';
import 'samplePages/profileView.dart';
import 'samplePages/searchview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const NaviBar(
      fabColor: Colors.blue,
      navBarColor: Colors.white,
      fabIconColor: Colors.white,
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
      navIconSize: 24,
      navIcon1: Icons.home,
      navIcon2: Icons.branding_watermark,
      navIcon3: Icons.padding,
      navIcon4: Icons.search,
      navIconColor: Colors.black,
      nav1Name: 'home',
      nav2Name: 'search',
      nav3Name: 'help',
      nav4Name: 'profile',
      routeList: [
        Home(),
        Search(),
        Help(),
        Profile(),
      ],
    );
  }
}
