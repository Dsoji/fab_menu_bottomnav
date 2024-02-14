import 'package:fab_menu_bottomnav/src/bar_item.dart';
import 'package:flutter/material.dart';

class NaviBar extends StatefulWidget {
  final Color fabColor;
  final List<BottomNav> bottomNavItems;
  final List<FabCont> fabItems;
  final List<Widget> routeList;
  final Color navBarColor;
  final Color fabIconColor;
  // final String? email;
  // final String? firstName;
  // final String? lastName;
  const NaviBar({
    super.key,
    required this.fabColor,
    required this.bottomNavItems,
    required this.fabItems,
    required this.navBarColor,
    required this.fabIconColor,
    required this.routeList,
  });

  @override
  State<NaviBar> createState() => _NaviBarState();
}

class _NaviBarState extends State<NaviBar> {
  late List<Widget> pageList = widget.routeList;
  int pageIndex = 0;
  Color color = Colors.grey;
  void changePage(index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0), color: widget.fabColor),
        child: PopupMenuButton<String>(
          offset: const Offset(-85, -90),
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            PopupMenuItem<String>(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: widget.fabItems,
            )),
          ],
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          icon: Icon(
            Icons.add,
            color: widget.fabIconColor,
          ),
          tooltip: 'Show Menu',
        ),
      ),
      body: pageList[pageIndex],
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 75,
        elevation: 10,
        color: widget.navBarColor,
        clipBehavior: Clip.antiAlias,
        notchMargin: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: widget.bottomNavItems,
        ),
      ),
    );
  }
}

class FabCont extends StatelessWidget {
  final Color? color;
  final String text;
  final IconData icon;

  const FabCont({
    super.key,
    this.color,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 63,
      width: 55,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0), color: color),
            child: Center(
              child: Icon(icon, color: Colors.white, size: 16),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 9,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
